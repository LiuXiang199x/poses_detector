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
class PcTabletSyncThread(threading.Thread): 

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
    def __init__(self, name):
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
        # Connection variables
        self._server, self._port, self._user = None, None, None
        self.key = None
        # Variables initialization
        self.timer = None
        self.filename_prev, self.sent_prev = '', 0
        # Result variables
        self.result = self.CON_ERROR
        self.info = None

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
        self.read_tablet_params()
        # Methods
        try:
            # rsync pull
            if(self.name == 'rsync_pull'):
                self.rsync_pull()
            elif(self.name == 'rsync_push'):
                self.rsync_push()
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

    def read_tablet_params(self):
        try:
            rospy.logdebug('Reading: ' + self.tablet_params_filepath)
            stream = open(self.tablet_params_filepath, 'r')
            params_dict = yaml.load(stream) # Loads value
            self._ip, self._port, self._user = params_dict['tablet_IP'], params_dict['tablet_port'], params_dict['tablet_user']
        except IOError as e: # Reading file error
            rospy.logerr(e)
            self._ip, self._port, self._user = None, None, None # Reset value
            result = self.ERROR
        except KeyError as e: # Reading file error
            rospy.logerr(e)
            self._ip, self._port, self._user = None, None, None # Reset value
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

    def rsync_pull(self):
        self.start_timer()
        rospy.logdebug('rsync pulling')
        cmd = "rsync -av --delete -O -e 'ssh -p " + str(self._port) + "' " + self._user + "@" + self._ip + ":/sdcard/multimedia/testimg/ ../Pictures/"
        os.system(cmd)

    def rsync_push(self):
        self.start_timer()
        rospy.logdebug('rsync pushing')
        cmd = "rsync -av --delete -O -e 'ssh -p " + str(self._port) + "' ../Pictures/ " + self._user + "@" + self._ip + ":/sdcard/multimedia/testimg"
        os.system(cmd)


    ## @brief scp get method
    def scp_get(self, remote_path, local_path, recursive):
        # Start timer
        self.start_timer()
        rospy.logdebug('Establish rsync connection')
        #cmd = "rsync -av -e 'ssh -p 8022' " + full_remote_path + " " + local_path
        #full_remote_path = tablet_user + '@' + tablet_IP + ':' + remote_path
        os.system("rsync -av -e 'ssh -p 8022' u0_a121@192.168.1.106:/sdcard/multimedia/testimg/ Pictures/")
        #subprocess.call(['rsync', '-av', '-e', '"ssh -p 8022"', 'u0_a121@192.168.1.106:/sdcard/Pictures/', 'Pictures/' ])

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

    ## @brief Returns thread result
      #  @return result: thread result
    def return_result(self):
        return self.result

    ## @brief Returns thread info
      #  @return info: thread info
    def return_info(self):
        return self.info
