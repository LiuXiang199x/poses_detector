# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs;actionlib_msgs;skill;interaction_msgs;common_msgs;hand_gesture_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lhand_gesture_skill".split(';') if "-lhand_gesture_skill" != "" else []
PROJECT_NAME = "hand_gesture_skill"
PROJECT_SPACE_DIR = "/home/haobing/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
