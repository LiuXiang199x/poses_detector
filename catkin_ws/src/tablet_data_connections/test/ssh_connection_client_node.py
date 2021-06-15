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

# Messages
from tablet_data_connections.srv import PCTablet_Commands, PCTablet_CommandsRequest

# Local libraries


if __name__ == '__main__':
	try:
		# Package name
		pkg_name = 'tablet_data_connections'

		# start the node
		rospy.init_node('ssh_client')


		print ('Creation of kvp')
		# Kvp creation
		msg = PCTablet_CommandsRequest()

		#'''
		#msg.command = 'syncTablet2PC'
		
		msg.command = 'syncPC2Tablet'

		'''
		msg.command = 'transferPC2TabletTemp'
		msg.first_arg = '/home/user/images/tmp/def.png'
		msg.second_arg = 'file_name1'
		#'''
		'''
		msg.command = 'lsTablet'
		msg.first_arg = '/sdcard/multimedia/tmp/'
		#'''
		'''
		msg.command = 'mkdirTablet'
		msg.first_arg = '/sdcard/multimedia/tmp/ol'
		#'''
		'''
		msg.command = 'existsTablet'
		msg.first_arg = '/sdcard/multimedia/tmp/ol'
		#'''
		'''
		msg.command = 'cutTablet'
		msg.first_arg = '/sdcard/multimedia/test1.png'
		msg.second_arg = '/sdcard/multimedia/test.png'
		#'''
		'''
		msg.command = 'removeTablet'
		msg.first_arg = '/sdcard/multimedia/test.png'
		#'''

		

		print 'Wait for service'
		rospy.wait_for_service('tablet_data_connections/pctablet_sync')
		print 'Service ready'

		try:
			client_call = rospy.ServiceProxy('tablet_data_connections/pctablet_sync', PCTablet_Commands)
			result = client_call(msg)
			print result
		except rospy.ServiceException, e:
			print "Service call failed: %s"%e



	except rospy.ROSInterruptException:
		pass
