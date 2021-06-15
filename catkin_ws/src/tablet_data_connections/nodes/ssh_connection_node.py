#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Copyright (c) 2019, Universidad Carlos III de Madrid. Todos los derechos reservados.


__author__ = "Sergio Gonzalez Diaz"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["Sergio Gonzalez Diaz"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "Susana Sarig Gomez"
__email__ = "ssarig@pa.uc3m.es"
__status__ = "Development"

# ROS libraries
import rospy
import rospkg
#import rosparam

# Messages
from tablet_data_connections.srv import PCTablet_Commands, PCTablet_CommandsResponse

# Local libraries
from tablet_data_connections.pctablet_sync import PCTablet_Sync
from interaction_utils.key_value_pairs import to_dict, from_dict

## @brief SSH Connection manager class
class SSHConnectionManager():

	## @brief Init method
	#  @param pkg_name: package name
	def __init__(self, pkg_name):

		# Local paths
		rospack = rospkg.RosPack()
		pkg_path = rospack.get_path(pkg_name) + '/' # Package path
		self.path_data = pkg_path + 'data/' # Data path

		# PC Tablet communications variables
		self.connector = PCTablet_Sync()

		# ROS initialization
		self.create_msg_srv() # Initialize the server and publishers

	## @brief msg and srv initializer
	  #  @raise rospy.ROSException: If the service is inactive
	def create_msg_srv(self):
		# servers and clients
		self.serv = rospy.Service('tablet_data_connections/pctablet_sync', PCTablet_Commands, self.pctablet_sync_callback)

	## @brief pctablet_connection service callback
	#  Calls the pctablet_connection methods
	#  @param req: Service request
	  #  @return result, info: Service response
	def pctablet_sync_callback(self, req):
		result = -1
		info = ''
		rospy.loginfo('Request: %s' % (str(req.command)))
		if(req.command == 'syncTablet2PC'):
			result = self.connector.syncTablet2PC()
		elif(req.command == 'syncPC2Tablet'):
			result = self.connector.syncPC2Tablet()
		elif(req.command == 'transferPC2TabletTemp'):
			result, info = self.connector.transferPC2TabletTemp(req.first_arg, req.second_arg, close_ssh=False)
		elif(req.command == 'lsTablet'):
			result, list_dir = self.connector.lsTablet(req.first_arg, close_ssh=False)
			info = str(list_dir)
		elif(req.command == 'mkdirTablet'):
			result = self.connector.mkdirTablet(req.first_arg, close_ssh=False)
		elif(req.command == 'existsTablet'):
			result = self.connector.existsTablet(req.first_arg, close_ssh=False)
		elif(req.command == 'cutTablet'):
			result = self.connector.cutTablet(req.first_arg, req.second_arg, close_ssh=False)
		elif(req.command == 'removeTablet'):
			result = self.connector.removeTablet(req.first_arg, close_ssh=False)
		else:
			result = -1
			info = ''
			rospy.logerr('Wrong petition: %s' % req.command)

		return PCTablet_CommandsResponse(result, info)


if __name__ == '__main__':
	try:

		# Package name
		pkg_name = 'tablet_data_connections'

		# start the node
		rospy.init_node(pkg_name, log_level=rospy.DEBUG)
		rospy.loginfo('[' + pkg_name + ']')

		# Variables Initialization
		ssh_connection_manager = SSHConnectionManager(pkg_name)
		
		rospy.spin()

	except rospy.ROSInterruptException:
		pass
	
