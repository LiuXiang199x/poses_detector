#!/usr/bin/env python
# -*- coding: utf-8 -*-

__author__ = "Haobing Zhong"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["Haobing Zhong"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "Haobing Zhong"
__email__ = "100414522@alumnos.uc3m.es"
__status__ = "Development"


import rospy
from android_skill.exercise_skill import ExerciseSkill

pkg_name = "android_skill" # Package name

if __name__ == '__main__':
    try:
        # start the node
        rospy.init_node(pkg_name)

        # create and spin the node
        node = ExerciseSkill()

        rospy.spin()
    except rospy.ROSInterruptException:
        pass
