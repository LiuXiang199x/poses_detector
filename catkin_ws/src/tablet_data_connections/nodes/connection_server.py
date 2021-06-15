#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Copyright (c) 2019, Universidad Carlos III de Madrid. Todos los derechos reservados.


__author__ = "Susana Sarig Gomez"
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
class ConnectionServer():

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
		rospy.loginfo('Request: %s, %s, %s' % (str(req.command),str(req.first_arg),str(req.second_arg)))
		if(req.command == 'syncTablet2PC'):
			result = self.connector.syncTablet2PC(req.first_arg, req.second_arg)
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
		connection_server = ConnectionServer(pkg_name)
		
		rospy.spin()

	except rospy.ROSInterruptException:
		pass
	
