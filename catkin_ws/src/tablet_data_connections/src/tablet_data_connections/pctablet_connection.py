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

# Libraries
import os

# Local libraries
from tablet_data_connections.pctablet_connection_thread import PcTabletConnectionThread


## @brief PC - Tablet Connection class
class PCTablet_Connection():

    # Constants
    SUCCESS, ERROR, CON_ERROR, FAIL = 0, -1, -2, 1

    ## @brief Init method
    def __init__(self):

        # Connection variables
        self.ssh = None # SSH object
        self.tablet_prefix = '/sdcard/multimedia/' # Tablet prefix path
        self.tablet_url = 'tmp/tmp_file' # Tmp file with no extension

    ############################ Basic functions #############################

    ## @brief Create SSH Client
      #  @return result: Result of the ssh client creation
      #    -  0: Success
      #    - -1: Error
      #    - -2: Connection Error
    def createSSHClient(self):
        # Call ssh connect
        t1 = PcTabletConnectionThread('ssh_connect', self.ssh)
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        self.ssh = t1.return_ssh()
        # Check result
        if(result!=self.SUCCESS):
            rospy.logerr('ERROR: SSH client not created')
            self.closeSSHClient()
        else:
            rospy.loginfo('SSH client created')
        return result

    ## @brief Close SSH Client
    def closeSSHClient(self):
        if(self.ssh!=None):
            rospy.logdebug('Closing SSH client')
            self.ssh.close()
            self.ssh = None

    ## @brief Transfer files and directories from remote host to localhost (PC to Tablet)
    #  @param remote_path: Path to retrieve from remote host
    #  @param local_path: Path in which to receive files locally
    #    'path/' -> Path to save the file
    #    'path/file' -> Path to save the file with new name for the file
    #  @param recursive: Transfer files and directories recursively
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the transfer
      #    -  0: Success
      #    - -1: Error
      #    - -2: Connection Error
    def transferTablet2PC(self, remote_path, local_path, recursive = True, close_ssh = True):
        rospy.loginfo('--- Tablet -> PC ---')
        # Check if connection has been started
        if(self.ssh == None):
            # Create SSH client
            if(self.createSSHClient()!=self.SUCCESS):
                return self.CON_ERROR # Error in the connection

        # Call scp get
        t1 = PcTabletConnectionThread('scp_get', self.ssh, remote_path, local_path, recursive)
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Transfer success')
        else:
            rospy.logerr('Transfer NOT successful')
        # If specified or connection error, close shh connection
        if(close_ssh or result==self.CON_ERROR): self.closeSSHClient()
        return result

    ## @brief Transfers files and directories to remote host (Tablet to PC)
    #  @param local_path: A single path, or a list of paths to be transferred.
    #    Recursive must be True to transfer directories
    #  @param remote_path: Path in which to receive the files on the
    #    remote host
    #    'path/' -> Path to save the file
    #    'path/file' -> Path to save the file with new name for the file
    #  @param recursive: Transfer files and directories recursively
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the transfer
      #    -  0: Success
      #    - -1: Error
      #    - -2: Connection Error
    def transferPC2Tablet(self, local_path, remote_path, recursive = True, close_ssh = True):
        rospy.loginfo('--- PC -> Tablet ---')
        # Check if connection has been started
        if(self.ssh == None):
            # Create SSH client
            if(self.createSSHClient()!=self.SUCCESS):
                return self.CON_ERROR # Error in the connection
        # Call scp put
        t1 = PcTabletConnectionThread('scp_put', self.ssh, local_path, remote_path, recursive)
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Transfer success')
        else:
            rospy.logerr('Transfer NOT successful')
        # If specified or connection error, close shh connection
        if(close_ssh or result==self.CON_ERROR): self.closeSSHClient() # If specified, close shh connection
        return result

    ## @brief Return a list containing the names of the entries in the given
    #    path in the tablet
    #  @param direc: Tablet path to list
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the process
      #    -  0: Success
      #    - -1: Error
      #    - -2: Connection Error
      #  @return list_dir: List of files. If error, []
    def lsTablet(self, direc = '.', close_ssh = True):
        rospy.loginfo('--- lsTablet ---')
        # Check if connection has been started
        if(self.ssh == None):
            # Create SSH client
            if(self.createSSHClient()!=self.SUCCESS):
                return self.CON_ERROR, [] # Error in the connection
        # Call sftp listdir
        t1 = PcTabletConnectionThread('sftp_listdir', self.ssh, direc)
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        list_dir = t1.return_info()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('ls executed with success')
        else:
            rospy.logerr('ls NOT executed')
        # If specified or connection error, close shh connection
        if(close_ssh or result==self.CON_ERROR): self.closeSSHClient() # If specified, close shh connection
        return result, list_dir

    ## @brief Create a folder (directory) in the tablet
    #  @param direc: Name of the folder to create
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the directory creation
      #    -  0: Success
      #    - -1: Error
      #    - -2: Connection Error
    def mkdirTablet(self, direc, close_ssh = True):
        rospy.loginfo('--- mkdirTablet ---')
        # Check if connection has been started
        if(self.ssh == None):
            # Create SSH client
            if(self.createSSHClient()!=self.SUCCESS):
                return self.CON_ERROR # Error in the connection
        # Call sftp mkdir
        t1 = PcTabletConnectionThread('sftp_mkdir', self.ssh, direc)
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Directory created with success')
        else:
            rospy.logerr('Directory NOT created')
        # If specified or connection error, close shh connection
        if(close_ssh or result==self.CON_ERROR): self.closeSSHClient() # If specified, close shh connection
        return result

    ## @brief Cut a directory in a given directory in the tablet
    #  @param oldpath: Path to cut from
    #  @param newpath: Path to save the file
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the cut
      #    -  0: Success
      #    - -1: Error
      #    - -2: Connection Error
    def cutTablet(self, oldpath, newpath, close_ssh = True):
        rospy.loginfo('--- cutTablet ---')
        # Check if connection has been started
        if(self.ssh == None):
            # Create SSH client
            if(self.createSSHClient()!=self.SUCCESS):
                return self.CON_ERROR # Error in the connection
        # Call sftp rename
        t1 = PcTabletConnectionThread('sftp_rename', self.ssh, oldpath, newpath)
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Directory cut with success')
        else:
            rospy.logerr('Directory NOT cut')
        # If specified or connection error, close shh connection
        if(close_ssh or result==self.CON_ERROR): self.closeSSHClient() # If specified, close shh connection
        return result

    ## @brief Remove a tablet file
    #  Only works with files
    #  @param path: Path to remove
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the remove
      #    -  0: Success
      #    - -1: Error
      #    - -2: Connection Error
    def removeTablet(self, path, close_ssh = True):
        rospy.loginfo('--- removeTablet ---')
        # Check if connection has been started
        if(self.ssh == None):
            # Create SSH client
            if(self.createSSHClient()!=self.SUCCESS):
                return self.CON_ERROR # Error in the connection
        # Call sftp remove
        t1 = PcTabletConnectionThread('sftp_remove', self.ssh, path)
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Directory removed with success')
        else:
            rospy.logerr('Directory NOT removed')
        # If specified or connection error, close shh connection
        if(close_ssh or result==self.CON_ERROR): self.closeSSHClient() # If specified, close shh connection
        return result

    ########################### Advanced functions ###########################

    ## @brief Transfers files and directories to remote host temporary file (Tablet to PC)
    #  @param local_path: A single path, or a list of paths to be transferred
    #  @param file_name: Name of the temporary file (tmp_{file_name}.{ext})
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the process
      #  @return tablet_tmp_filepath: Name of the remote temporary file. If error, ''
    def transferPC2TabletTemp(self, local_path, file_name = 'file', close_ssh = True):
        rospy.loginfo('PC file sending to temp file')
        # Local path
        _, file_extension = os.path.splitext(local_path) # Get file extension
        # Remote path
        tablet_tmp_folder = 'tmp/' # Folder where temp files are stored
        tablet_tmp_filepath = tablet_tmp_folder + 'tmp_' + file_name + file_extension # Name of the temp file (without extension)
        # Get list of files
        result, list_files = self.lsTablet(self.tablet_prefix + tablet_tmp_folder, close_ssh = False)
        if(result==self.ERROR or result==self.CON_ERROR): # Error
            # Print result
            rospy.logerr('Transfer NOT successful (lsTablet Error)')
            return result, ''
        # Remove list of files
        for file in list_files:
            result = self.removeTablet(self.tablet_prefix + tablet_tmp_folder + file, close_ssh = False)
            if(result==self.CON_ERROR): # Error
                # Print result
                rospy.logerr('Transfer NOT successful (removeTablet Error)')
                return result, ''
        # Transfer file to temp file
        result = self.transferPC2Tablet(local_path, self.tablet_prefix+ tablet_tmp_filepath, close_ssh = close_ssh)
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Transfer to temp success')
        else:
            rospy.logerr('Transfer to temp NOT successful (transferPC2Tablet Error)')
        return result, tablet_tmp_filepath if(result!=self.ERROR and result!=self.CON_ERROR) else ''

    ## @brief Checks if a file or directory exists in the tablet
    #  @param direc: Name of the file or directory to check
    #  @param close_ssh: True -> Close the ssh connection at the end of the function
      #  @return result: Result of the check
      #    -  0: Found
      #    -  1: NOT Found
      #    - -1: Error
      #    - -2: Connection Error
    def existsTablet(self, direc, close_ssh = True):
        rospy.loginfo('existsTablet')
        rospy.logdebug('Checking: %s' % direc)
        # Get root directory
        direc_vec = direc.split('/')
        # Remove spaces
        direc_vec = [x for x in direc_vec if x != '']
        # Rebuild the directory
        direc = ''
        for folder in direc_vec[:-1]:
            direc = direc + '/' + folder
        file = direc_vec[-1]
        # Make ls
        result, list_files = self.lsTablet(direc, close_ssh=close_ssh)
        if(result==self.ERROR or result==self.CON_ERROR): # Directory error
            # Print result
            rospy.logerr('existsTablet NOT successful (lsTablet Error)')
            return result
        # Loop to find direc
        for list_files_i in list_files:
            if (list_files_i == file):
                # Found
                # Print result
                rospy.loginfo('File or directory found')
                return self.SUCCESS
        # Not found
        # Print result
        rospy.logwarn('File or directory NOT found')
        return self.FAIL


# Main
if __name__ == '__main__':
    def loop_forever():
        import time
        while 1:
            print ("sec")
            time.sleep(1)

    connector = PCTablet_Connection()
    #print connector.transferPC2Tablet('/home/user/images/green_circle.png', '/sdcard/multimedia/image')
    #print connector.existsTablet('/sdcard/multimedia/image/200.png')
    #print connector.mkdirTablet('/sdcard/multimedia/image/test/s')
    #print connector.removeTablet('/home/user/images/green_circle.png')
    #print connector.removeTablet('/sdcard/multimedia/tmp/*')
    print (connector.lsTablet('/sdcard/multimedia/image/weather_skill/'))
    print (connector.transferPC2TabletTemp('/home/user/200.png'))
    loop_forever()
    
