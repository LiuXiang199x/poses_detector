#!/usr/bin/env python
# -*- coding: utf-8 -*-

__author__ = "XIANG LIU"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["XIANG LIU"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "XIANG LIU"
__email__ = "100414518@alumnos.uc3m.es"
__status__ = "Development"


import rospy
from android_skill.tutorial_hand import TutorialHandSkill

pkg_name = "android_skill" # Package name

if __name__ == '__main__':
    try:
        # start the node
        rospy.init_node(pkg_name)

        # create and spin the node
        node = TutorialHandSkill()

        rospy.spin()
    except rospy.ROSInterruptException:
        pass
