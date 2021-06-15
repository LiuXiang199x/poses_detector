# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "android_skill: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iandroid_skill:/home/haobing/catkin_ws/devel/share/android_skill/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Iinteraction_msgs:/home/haobing/catkin_ws/src/interaction_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Icommon_msgs:/home/haobing/catkin_ws/src/common_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(android_skill_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg" NAME_WE)
add_custom_target(_android_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "android_skill" "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg" "android_skill/AndroidResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg" NAME_WE)
add_custom_target(_android_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "android_skill" "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg" "android_skill/AndroidActionFeedback:actionlib_msgs/GoalStatus:android_skill/AndroidGoal:android_skill/AndroidActionGoal:android_skill/AndroidFeedback:android_skill/AndroidResult:android_skill/AndroidActionResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg" NAME_WE)
add_custom_target(_android_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "android_skill" "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg" NAME_WE)
add_custom_target(_android_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "android_skill" "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg" NAME_WE)
add_custom_target(_android_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "android_skill" "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg" "android_skill/AndroidFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg" NAME_WE)
add_custom_target(_android_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "android_skill" "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg" NAME_WE)
add_custom_target(_android_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "android_skill" "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:android_skill/AndroidGoal"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
)
_generate_msg_cpp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
)
_generate_msg_cpp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
)
_generate_msg_cpp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
)
_generate_msg_cpp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
)
_generate_msg_cpp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
)
_generate_msg_cpp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
)

### Generating Services

### Generating Module File
_generate_module_cpp(android_skill
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(android_skill_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(android_skill_generate_messages android_skill_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_cpp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_cpp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_cpp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_cpp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_cpp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_cpp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_cpp _android_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(android_skill_gencpp)
add_dependencies(android_skill_gencpp android_skill_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS android_skill_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
)
_generate_msg_eus(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
)
_generate_msg_eus(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
)
_generate_msg_eus(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
)
_generate_msg_eus(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
)
_generate_msg_eus(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
)
_generate_msg_eus(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
)

### Generating Services

### Generating Module File
_generate_module_eus(android_skill
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(android_skill_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(android_skill_generate_messages android_skill_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_eus _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_eus _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_eus _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_eus _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_eus _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_eus _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_eus _android_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(android_skill_geneus)
add_dependencies(android_skill_geneus android_skill_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS android_skill_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
)
_generate_msg_lisp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
)
_generate_msg_lisp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
)
_generate_msg_lisp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
)
_generate_msg_lisp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
)
_generate_msg_lisp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
)
_generate_msg_lisp(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
)

### Generating Services

### Generating Module File
_generate_module_lisp(android_skill
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(android_skill_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(android_skill_generate_messages android_skill_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_lisp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_lisp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_lisp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_lisp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_lisp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_lisp _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_lisp _android_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(android_skill_genlisp)
add_dependencies(android_skill_genlisp android_skill_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS android_skill_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
)
_generate_msg_nodejs(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
)
_generate_msg_nodejs(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
)
_generate_msg_nodejs(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
)
_generate_msg_nodejs(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
)
_generate_msg_nodejs(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
)
_generate_msg_nodejs(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
)

### Generating Services

### Generating Module File
_generate_module_nodejs(android_skill
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(android_skill_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(android_skill_generate_messages android_skill_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_nodejs _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_nodejs _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_nodejs _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_nodejs _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_nodejs _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_nodejs _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_nodejs _android_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(android_skill_gennodejs)
add_dependencies(android_skill_gennodejs android_skill_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS android_skill_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
)
_generate_msg_py(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
)
_generate_msg_py(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
)
_generate_msg_py(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
)
_generate_msg_py(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
)
_generate_msg_py(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
)
_generate_msg_py(android_skill
  "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
)

### Generating Services

### Generating Module File
_generate_module_py(android_skill
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(android_skill_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(android_skill_generate_messages android_skill_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_py _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidAction.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_py _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_py _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidResult.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_py _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionFeedback.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_py _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_py _android_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/android_skill/msg/AndroidActionGoal.msg" NAME_WE)
add_dependencies(android_skill_generate_messages_py _android_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(android_skill_genpy)
add_dependencies(android_skill_genpy android_skill_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS android_skill_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/android_skill
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(android_skill_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET interaction_msgs_generate_messages_cpp)
  add_dependencies(android_skill_generate_messages_cpp interaction_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(android_skill_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/android_skill
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(android_skill_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET interaction_msgs_generate_messages_eus)
  add_dependencies(android_skill_generate_messages_eus interaction_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(android_skill_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/android_skill
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(android_skill_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET interaction_msgs_generate_messages_lisp)
  add_dependencies(android_skill_generate_messages_lisp interaction_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(android_skill_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/android_skill
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(android_skill_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET interaction_msgs_generate_messages_nodejs)
  add_dependencies(android_skill_generate_messages_nodejs interaction_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(android_skill_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/android_skill/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(android_skill_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET interaction_msgs_generate_messages_py)
  add_dependencies(android_skill_generate_messages_py interaction_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(android_skill_generate_messages_py std_msgs_generate_messages_py)
endif()
