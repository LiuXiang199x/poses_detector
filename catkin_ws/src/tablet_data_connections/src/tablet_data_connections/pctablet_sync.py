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
from tablet_data_connections.pctablet_sync_thread import PcTabletSyncThread


## @brief PC - Tablet Connection class
class PCTablet_Sync():

    # Constants
    SUCCESS, ERROR, CON_ERROR, FAIL = 0, -1, -2, 1

    ## @brief Init method
    def __init__(self):
        self.ssh = None

    ############################ Basic functions #############################

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
    def syncTablet2PC(self):
        rospy.loginfo('--- Tablet -> PC ---')

        # Call rsync_pull as a thread
        t1 = PcTabletSyncThread('rsync_pull')
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Syncronization success')
        elif(result==self.CON_ERROR):
            rospy.loginfo('Connection error')
        else:
            rospy.logerr('Syncronization NOT successful')
        return result

    def syncPC2Tablet(self):
        rospy.loginfo('--- PC -> Tablet ---')

        # Call scp get
        t1 = PcTabletSyncThread('rsync_push')
        t1.start() # Start thread
        t1.join() # Wait until the end of the thread
        # Get results
        result = t1.return_result()
        # Print result
        if(result==self.SUCCESS):
            rospy.loginfo('Transfer success')
        elif(result==self.CON_ERROR):
            rospy.loginfo('Connection error')
        else:
            rospy.logerr('Transfer NOT successful')
        return result


# Main
if __name__ == '__main__':
    def loop_forever():
        import time
        while 1:
            print ("sec")
            time.sleep(1)

    loop_forever()
    
