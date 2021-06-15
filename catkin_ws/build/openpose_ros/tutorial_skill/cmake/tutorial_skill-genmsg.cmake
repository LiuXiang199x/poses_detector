# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tutorial_skill: 7 messages, 0 services")

set(MSG_I_FLAGS "-Itutorial_skill:/home/haobing/catkin_ws/devel/share/tutorial_skill/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Icommon_msgs:/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tutorial_skill_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg" NAME_WE)
add_custom_target(_tutorial_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_skill" "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg" "tutorial_skill/TutorialResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg" NAME_WE)
add_custom_target(_tutorial_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_skill" "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg" NAME_WE)
add_custom_target(_tutorial_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_skill" "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg" "tutorial_skill/TutorialFeedback:actionlib_msgs/GoalStatus:common_msgs/KeyValuePair:tutorial_skill/TutorialActionGoal:tutorial_skill/TutorialResult:tutorial_skill/TutorialGoal:tutorial_skill/TutorialActionResult:tutorial_skill/TutorialActionFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg" NAME_WE)
add_custom_target(_tutorial_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_skill" "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:tutorial_skill/TutorialGoal"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg" NAME_WE)
add_custom_target(_tutorial_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_skill" "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg" "common_msgs/KeyValuePair"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg" NAME_WE)
add_custom_target(_tutorial_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_skill" "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg" "common_msgs/KeyValuePair:actionlib_msgs/GoalID:tutorial_skill/TutorialFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg" NAME_WE)
add_custom_target(_tutorial_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_skill" "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_cpp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_cpp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_cpp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_cpp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_cpp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_cpp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
)

### Generating Services

### Generating Module File
_generate_module_cpp(tutorial_skill
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tutorial_skill_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tutorial_skill_generate_messages tutorial_skill_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_cpp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_cpp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_cpp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_cpp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_cpp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_cpp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_cpp _tutorial_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_skill_gencpp)
add_dependencies(tutorial_skill_gencpp tutorial_skill_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_skill_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
)
_generate_msg_eus(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
)
_generate_msg_eus(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
)
_generate_msg_eus(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
)
_generate_msg_eus(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
)
_generate_msg_eus(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
)
_generate_msg_eus(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
)

### Generating Services

### Generating Module File
_generate_module_eus(tutorial_skill
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tutorial_skill_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tutorial_skill_generate_messages tutorial_skill_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_eus _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_eus _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_eus _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_eus _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_eus _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_eus _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_eus _tutorial_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_skill_geneus)
add_dependencies(tutorial_skill_geneus tutorial_skill_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_skill_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_lisp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_lisp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_lisp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_lisp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_lisp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
)
_generate_msg_lisp(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
)

### Generating Services

### Generating Module File
_generate_module_lisp(tutorial_skill
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tutorial_skill_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tutorial_skill_generate_messages tutorial_skill_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_lisp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_lisp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_lisp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_lisp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_lisp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_lisp _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_lisp _tutorial_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_skill_genlisp)
add_dependencies(tutorial_skill_genlisp tutorial_skill_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_skill_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
)
_generate_msg_nodejs(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
)
_generate_msg_nodejs(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
)
_generate_msg_nodejs(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
)
_generate_msg_nodejs(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
)
_generate_msg_nodejs(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
)
_generate_msg_nodejs(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tutorial_skill
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tutorial_skill_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tutorial_skill_generate_messages tutorial_skill_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_nodejs _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_nodejs _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_nodejs _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_nodejs _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_nodejs _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_nodejs _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_nodejs _tutorial_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_skill_gennodejs)
add_dependencies(tutorial_skill_gennodejs tutorial_skill_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_skill_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
)
_generate_msg_py(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
)
_generate_msg_py(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
)
_generate_msg_py(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
)
_generate_msg_py(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
)
_generate_msg_py(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
)
_generate_msg_py(tutorial_skill
  "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
)

### Generating Services

### Generating Module File
_generate_module_py(tutorial_skill
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tutorial_skill_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tutorial_skill_generate_messages tutorial_skill_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_py _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_py _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialAction.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_py _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionGoal.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_py _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_py _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_py _tutorial_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/tutorial_skill/msg/TutorialResult.msg" NAME_WE)
add_dependencies(tutorial_skill_generate_messages_py _tutorial_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_skill_genpy)
add_dependencies(tutorial_skill_genpy tutorial_skill_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_skill_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_skill
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tutorial_skill_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(tutorial_skill_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET common_msgs_generate_messages_cpp)
  add_dependencies(tutorial_skill_generate_messages_cpp common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_skill
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tutorial_skill_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(tutorial_skill_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET common_msgs_generate_messages_eus)
  add_dependencies(tutorial_skill_generate_messages_eus common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_skill
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tutorial_skill_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(tutorial_skill_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET common_msgs_generate_messages_lisp)
  add_dependencies(tutorial_skill_generate_messages_lisp common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_skill
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tutorial_skill_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(tutorial_skill_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET common_msgs_generate_messages_nodejs)
  add_dependencies(tutorial_skill_generate_messages_nodejs common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_skill
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tutorial_skill_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(tutorial_skill_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET common_msgs_generate_messages_py)
  add_dependencies(tutorial_skill_generate_messages_py common_msgs_generate_messages_py)
endif()
