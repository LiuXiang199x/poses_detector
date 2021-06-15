#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Copyright (c) 2019, Universidad Carlos III de Madrid. Todos los derechos reservados.


__author__ = "Sergio Gonzalez Diaz"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["Sergio Gonzalez Diaz"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "Sergio Gonzalez Diaz"
__email__ = "sergigon@ing.uc3m.es"
__status__ = "Development"

# ROS libraries
import rospy
import rospkg

# Libraries
import paramiko
from scp import SCPClient, SCPException
import socket
import ctypes
from threading import Timer
import threading # https://www.geeksforgeeks.org/python-different-ways-to-kill-a-thread/
                 # Fix thread exception: https://stackoverflow.com/questions/38667755/killing-a-thread-in-python-simple-program-does-not-seem-to-work
import yaml
import os
import subprocess

# Exceptions
class NoKey(Exception):
    pass
class NoTabletParams(Exception):
    pass


## @brief Thread with exception
#  Class made to manage methods with exceptions
class PcTabletConnectionThread(threading.Thread): 

    # Constants
    SUCCESS, ERROR, CON_ERROR = 0, -1, -2
    TIME_WAIT = 5 # sec
    PKG_NAME = 'tablet_data_connections'

    ## @brief Init method
    #  @param name: Name of the method
    #  @param ssh: SSH object
    #  @param arg1: First argument
    #  @param arg2: Second argument
    #  @param recursive: Transfer files and directories recursively
    def __init__(self, name, ssh, arg1 = None, arg2 = None, recursive = True):
        # Thread initialization 
        threading.Thread.__init__(self)
        # Local paths
        rospack = rospkg.RosPack()
        pkg_path = rospack.get_path(self.PKG_NAME) + '/' # Package path
        self.path_data = pkg_path + 'data/' # Data path
        self.path_alz = self.path_data + os.environ['HOSTNAME'] + '/' # Alz path
        self.tablet_params_filepath = self.path_alz + 'tablet_ssh_params.yaml' # Tablet SSH params filepath
        self.key_filepath = "/home/user/.ssh/id_tablet.pub" # SSH key filepath
        # Arguments initializarion
        self.name = name
        self.ssh = ssh
        self.arg1, self.arg2, self.recursive = arg1, arg2, recursive
        # Connection variables
        self._server, self._port, self._user = None, None, None
        self.key = None
        # Variables initialization
        self.scp = None
        self.sftp = None
        self.timer = None
        self.filename_prev, self.sent_prev = '', 0
        # Result variables
        self.result = self.CON_ERROR
        self.info = None

    ## @brief Close the scp object
    def close_scp(self):
        if(self.scp!=None):
            rospy.logdebug('Closing scp')
            self.scp.close()

    ## @brief Close the sftp object
    def close_sftp(self):
        if(self.sftp!=None):
            rospy.logdebug('Closing sftp')
            self.sftp.close()

    ## @brief Start the timer
    def start_timer(self):
        self.timer = Timer(self.TIME_WAIT, self.raise_exception)
        self.timer.start()

    ## @brief Cancel the timer
    def cancel_timer(self):
        # Canel the timer
        if(self.timer!=None):
            self.timer.cancel()
        
    ## @brief Target function of the thread class
    #  Executes the methods specified and check the errors
    def run(self): 
        # Methods
        try:
            # Scp get
            if(self.name == 'ssh_connect'):
                self.ssh_connect(self.ssh)
            # Scp get
            elif(self.name == 'scp_get'):
                self.scp_get(self.arg1, self.arg2, self.recursive)
            # Scp set
            elif(self.name == 'scp_put'):
                self.scp_put(self.arg1, self.arg2, self.recursive)
            # Sftp set
            elif(self.name == 'sftp_listdir'):
                self.sftp_listdir(self.arg1)
            # Sftp mkdir
            elif(self.name == 'sftp_mkdir'):
                self.sftp_mkdir(self.arg1)
            # Sftp rename
            elif(self.name == 'sftp_rename'):
                self.sftp_rename(self.arg1, self.arg2)
            # Sftp rename
            elif(self.name == 'sftp_remove'):
                self.sftp_remove(self.arg1)
            # Wrong name
            else:
                rospy.logerr('Wrong name; %s. Closing thread' % self.name)
                self.result = self.ERROR
        # Exceptions
        except NoKey as e:
            rospy.logerr('NoKey: %s' % e)
            self.result = self.ERROR
        except NoTabletParams as e:
            rospy.logerr('NoTabletParams: %s' % e)
            self.result = self.ERROR
        except socket.error as e:
            rospy.logerr('socket.error: %s' % e)
            self.result = self.CON_ERROR
        except paramiko.ssh_exception.NoValidConnectionsError as e:
            rospy.logerr('NoValidConnectionsError: %s ' % e)
            self.result = self.CON_ERROR
        except paramiko.ssh_exception.SSHException as e:
            rospy.logerr('SSHException: %s' % e)
            self.result = self.CON_ERROR
        except SCPException as e: # No tablet file
            rospy.logerr('SCPException: %s ' % e)
            self.result = self.ERROR
        except OSError as e: # No PC file
            rospy.logerr('OSError: %s ' % e)
            self.result = self.ERROR
        except IOError as e: # No PC directory (scp_get)
                             # Directory no exists (sftp_listdir)
                             # Directory already exists or directory root no exists (sftp_mkdir)
                             # Newpath is a folder or something goes wrong (sftp_rename)
                             # Bad file descriptor (SSH client badly created)
            rospy.logerr('IOError: %s ' % e)
            if(e=='[Errno 9] Bad file descriptor'):
                self.result = self.CON_ERROR
            else:
                self.result = self.ERROR
        except EOFError as e: # EOFError transfer
            rospy.logerr ('EOFError: %s ' % e)
            self.result = self.CON_ERROR
        except paramiko.transport as e:
            rospy.logerr ('transport: %s ' % e)
            self.result = self.CON_ERROR
        except: # Timeout or error
            raise
            rospy.logerr('Timeout or Error')
            self.result = self.CON_ERROR
        else: # Executes if no exceptions
            self.result = self.SUCCESS
        finally: # Executes always
            # Cancel the timer
            self.cancel_timer()
            # Close scp object
            self.close_scp()
            # Close sftp object
            self.close_sftp()

    ## @brief Get the SSH key
    #  It searchs the key in the computer files
      #  @return result: Result of the search
      #    -  0: Success
      #    - -1: Error
    def getSSHKey(self):
        try:
            rospy.logdebug('Reading: ' + self.key_filepath)
            file = open(self.key_filepath, "r")
        except IOError as e: # Reading file error
            rospy.logerr(e)
            self.key = None # Reset value
            result = self.ERROR
        else:
            self.key = file.read()
            result = self.SUCCESS
        return result

    def read_tablet_params(self):
        try:
            rospy.logdebug('Reading: ' + self.tablet_params_filepath)
            stream = open(self.tablet_params_filepath, 'r')
            params_dict = yaml.load(stream) # Loads value
            self._server, self._port, self._user = params_dict['tablet_IP'], params_dict['tablet_port'], params_dict['tablet_user']
        except IOError as e: # Reading file error
            rospy.logerr(e)
            self._server, self._port, self._user = None, None, None # Reset value
            result = self.ERROR
        except KeyError as e: # Reading file error
            rospy.logerr(e)
            self._server, self._port, self._user = None, None, None # Reset value
            result = self.ERROR
        else: # No errors
            result = self.SUCCESS
        return result

    ## @brief Progress callback that prints the current percentage
    #    completed for the file sending
    #  @param filename: Path of the sent file
    #  @param size: Size of the sent file
    #  @param sent: Current size sent of the sent file.
    def progress(self, filename, size, sent):
        rospy.logdebug("%s\'s progress: %.2f%%   \r" % (filename, float(sent)/float(size)*100) )
        # Checks if it is stuck
        if(self.filename_prev!=filename or self.sent_prev!=sent): # It is not stuck
            self.cancel_timer()
            self.start_timer()
        # Fill prev variables
        self.filename_prev, self.sent_prev = filename, sent

    ########################## Methods ##########################

    ## @brief ssh connect method
    def ssh_connect(self, ssh):
        # Get tablet SSH params
        if(self._server==None or self._port==None or self._user==None):
            result = self.read_tablet_params()
            if(result==self.ERROR):
                raise NoTabletParams('Path '+ str(self.tablet_params_filepath) +' does not exist')

        # Get SSH key
        if(self.key==None):
            result = self.getSSHKey()
            if(result==self.ERROR):
                raise NoKey('Path '+ str(self.key_filepath) +' does not exist')
        # Start timer
        self.start_timer()
        # Create ssh object
        rospy.logdebug('Create ssh object')
        self.ssh = paramiko.SSHClient()
        self.ssh.load_system_host_keys()
        self.ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        # Set connection
        self.ssh.connect(self._server, self._port, self._user, self.key)

    ## @brief scp get method
    def scp_get(self, remote_path, local_path, recursive):
        # Start timer
        self.start_timer()
        
        """
        # Create scp object
        rospy.logdebug('Create scp object')
        self.scp = SCPClient(self.ssh.get_transport(), progress=self.progress)
        # 'get' method
        rospy.logdebug('Transfering files: %s -> %s' %(remote_path, local_path))
        self.scp.get(remote_path, local_path, recursive=recursive)
        """
        #NEW##################################################
        rospy.logdebug('Establish rsync connection')
        #cmd = "rsync -av -e 'ssh -p 8022' " + full_remote_path + " " + local_path
        #full_remote_path = tablet_user + '@' + tablet_IP + ':' + remote_path
        #os.system("rsync -av -e 'ssh -p 8022' u0_a121@192.168.1.106:/sdcard/pictures/ Pictures/")
        subprocess.call(['rsync', '-av', '-e', '"ssh -p 8022"', 'u0_a121@192.168.1.106:/sdcard/Pictures/', 'Pictures/' ])

    ## @brief scp put method
    def scp_put(self, local_path, remote_path, recursive):
        # Start timer
        self.start_timer()
        # Create scp object
        rospy.logdebug('Create scp object')
        self.scp = SCPClient(self.ssh.get_transport(), progress=self.progress)
        # 'put' method
        rospy.logdebug('Transfering files: %s -> %s' %(local_path, remote_path))
        self.scp.put(local_path, recursive=recursive, remote_path=remote_path)

    ## @brief sftp listdir method
    def sftp_listdir(self, direc):
        # Start timer
        self.start_timer()
        # Create sftp object
        rospy.logdebug('Create sftp object')
        self.sftp = self.ssh.open_sftp()
        # 'listdir' method
        rospy.logdebug('ls to: %s' % direc)
        self.info = self.sftp.listdir(direc)

    ## @brief sftp mkdir method
    def sftp_mkdir(self, direc):
        # Start timer
        self.start_timer()
        # Create sftp object
        rospy.logdebug('Create sftp object')
        self.sftp = self.ssh.open_sftp()
        # 'listdir' method
        rospy.logdebug('Creating directory: %s' % direc)
        self.sftp.mkdir(direc)

    ## @brief sftp rename method
    def sftp_rename(self, oldpath, newpath):
        # Start timer
        self.start_timer()
        # Create sftp object
        rospy.logdebug('Create sftp object')
        self.sftp = self.ssh.open_sftp()
        # 'rename' method
        rospy.logdebug('Moving file %s to %s' % (oldpath, newpath))
        self.sftp.rename(oldpath, newpath)

    ## @brief sftp remove method
    def sftp_remove(self, path):
        # Start timer
        self.start_timer()
        # Create sftp object
        rospy.logdebug('Create sftp object')
        self.sftp = self.ssh.open_sftp()
        # 'remove' method
        rospy.logdebug('Removing file %s' % path)
        self.sftp.remove(path)

    ##################### Thread functions ###################### 
    
    ## @brief Returns id of the respective thread
      #  @return id: id of the respective thread
    def get_id(self): 
        if hasattr(self, '_thread_id'): 
            return self._thread_id 
        for id, thread in threading._active.items(): 
            if thread is self: 
                return id

    ## @brief Raise an exception in the active thread
    def raise_exception(self):
        thread_id = self.get_id()
        res = ctypes.pythonapi.PyThreadState_SetAsyncExc(ctypes.c_long(thread_id), 
              ctypes.py_object(SystemExit))
        if res > 1: 
            ctypes.pythonapi.PyThreadState_SetAsyncExc(thread_id, 0)
            rospy.logerr('Exception raise failure')

    ## @brief Returns SSH Client
      #  @return ssh: SSH client
    def return_ssh(self):
        return self.ssh

    ## @brief Returns thread result
      #  @return result: thread result
    def return_result(self):
        return self.result

    ## @brief Returns thread info
      #  @return info: thread info
    def return_info(self):
        return self.info
