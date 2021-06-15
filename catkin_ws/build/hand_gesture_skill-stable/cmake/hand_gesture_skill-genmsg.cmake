# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hand_gesture_skill: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ihand_gesture_skill:/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Iinteraction_msgs:/home/haobing/catkin_ws/src/interaction_msgs/msg;-Ihand_gesture_msgs:/home/haobing/catkin_ws/src/hand_gesture_msgs/msg;-Icommon_msgs:/home/haobing/catkin_ws/src/common_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hand_gesture_skill_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg" NAME_WE)
add_custom_target(_hand_gesture_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_skill" "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg" "hand_gesture_skill/HandGestureGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg" NAME_WE)
add_custom_target(_hand_gesture_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_skill" "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg" "hand_gesture_skill/HandGestureResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg" NAME_WE)
add_custom_target(_hand_gesture_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_skill" "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg" "hand_gesture_skill/HandGestureGoal:actionlib_msgs/GoalStatus:hand_gesture_skill/HandGestureActionGoal:hand_gesture_skill/HandGestureActionResult:hand_gesture_skill/HandGestureActionFeedback:hand_gesture_skill/HandGestureFeedback:actionlib_msgs/GoalID:hand_gesture_skill/HandGestureResult:std_msgs/Header"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg" NAME_WE)
add_custom_target(_hand_gesture_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_skill" "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg" "hand_gesture_skill/HandGestureFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg" NAME_WE)
add_custom_target(_hand_gesture_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_skill" "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg" NAME_WE)
add_custom_target(_hand_gesture_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_skill" "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg" NAME_WE)
add_custom_target(_hand_gesture_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_skill" "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_cpp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_cpp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_cpp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_cpp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_cpp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_cpp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
)

### Generating Services

### Generating Module File
_generate_module_cpp(hand_gesture_skill
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hand_gesture_skill_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hand_gesture_skill_generate_messages hand_gesture_skill_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_cpp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_cpp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_cpp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_cpp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_cpp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_cpp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_cpp _hand_gesture_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_skill_gencpp)
add_dependencies(hand_gesture_skill_gencpp hand_gesture_skill_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_skill_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_eus(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_eus(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_eus(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_eus(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_eus(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_eus(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
)

### Generating Services

### Generating Module File
_generate_module_eus(hand_gesture_skill
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hand_gesture_skill_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hand_gesture_skill_generate_messages hand_gesture_skill_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_eus _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_eus _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_eus _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_eus _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_eus _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_eus _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_eus _hand_gesture_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_skill_geneus)
add_dependencies(hand_gesture_skill_geneus hand_gesture_skill_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_skill_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_lisp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_lisp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_lisp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_lisp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_lisp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_lisp(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
)

### Generating Services

### Generating Module File
_generate_module_lisp(hand_gesture_skill
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hand_gesture_skill_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hand_gesture_skill_generate_messages hand_gesture_skill_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_lisp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_lisp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_lisp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_lisp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_lisp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_lisp _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_lisp _hand_gesture_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_skill_genlisp)
add_dependencies(hand_gesture_skill_genlisp hand_gesture_skill_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_skill_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_nodejs(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_nodejs(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_nodejs(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_nodejs(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_nodejs(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_nodejs(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hand_gesture_skill
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hand_gesture_skill_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hand_gesture_skill_generate_messages hand_gesture_skill_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_nodejs _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_nodejs _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_nodejs _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_nodejs _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_nodejs _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_nodejs _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_nodejs _hand_gesture_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_skill_gennodejs)
add_dependencies(hand_gesture_skill_gennodejs hand_gesture_skill_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_skill_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_py(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_py(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_py(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_py(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_py(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
)
_generate_msg_py(hand_gesture_skill
  "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
)

### Generating Services

### Generating Module File
_generate_module_py(hand_gesture_skill
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hand_gesture_skill_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hand_gesture_skill_generate_messages hand_gesture_skill_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_py _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_py _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureAction.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_py _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureActionFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_py _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureResult.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_py _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureGoal.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_py _hand_gesture_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/hand_gesture_skill/msg/HandGestureFeedback.msg" NAME_WE)
add_dependencies(hand_gesture_skill_generate_messages_py _hand_gesture_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_skill_genpy)
add_dependencies(hand_gesture_skill_genpy hand_gesture_skill_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_skill_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_skill
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hand_gesture_skill_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(hand_gesture_skill_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET interaction_msgs_generate_messages_cpp)
  add_dependencies(hand_gesture_skill_generate_messages_cpp interaction_msgs_generate_messages_cpp)
endif()
if(TARGET hand_gesture_msgs_generate_messages_cpp)
  add_dependencies(hand_gesture_skill_generate_messages_cpp hand_gesture_msgs_generate_messages_cpp)
endif()
if(TARGET common_msgs_generate_messages_cpp)
  add_dependencies(hand_gesture_skill_generate_messages_cpp common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_skill
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hand_gesture_skill_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(hand_gesture_skill_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET interaction_msgs_generate_messages_eus)
  add_dependencies(hand_gesture_skill_generate_messages_eus interaction_msgs_generate_messages_eus)
endif()
if(TARGET hand_gesture_msgs_generate_messages_eus)
  add_dependencies(hand_gesture_skill_generate_messages_eus hand_gesture_msgs_generate_messages_eus)
endif()
if(TARGET common_msgs_generate_messages_eus)
  add_dependencies(hand_gesture_skill_generate_messages_eus common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_skill
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hand_gesture_skill_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(hand_gesture_skill_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET interaction_msgs_generate_messages_lisp)
  add_dependencies(hand_gesture_skill_generate_messages_lisp interaction_msgs_generate_messages_lisp)
endif()
if(TARGET hand_gesture_msgs_generate_messages_lisp)
  add_dependencies(hand_gesture_skill_generate_messages_lisp hand_gesture_msgs_generate_messages_lisp)
endif()
if(TARGET common_msgs_generate_messages_lisp)
  add_dependencies(hand_gesture_skill_generate_messages_lisp common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_skill
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hand_gesture_skill_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(hand_gesture_skill_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET interaction_msgs_generate_messages_nodejs)
  add_dependencies(hand_gesture_skill_generate_messages_nodejs interaction_msgs_generate_messages_nodejs)
endif()
if(TARGET hand_gesture_msgs_generate_messages_nodejs)
  add_dependencies(hand_gesture_skill_generate_messages_nodejs hand_gesture_msgs_generate_messages_nodejs)
endif()
if(TARGET common_msgs_generate_messages_nodejs)
  add_dependencies(hand_gesture_skill_generate_messages_nodejs common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_skill
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hand_gesture_skill_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(hand_gesture_skill_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET interaction_msgs_generate_messages_py)
  add_dependencies(hand_gesture_skill_generate_messages_py interaction_msgs_generate_messages_py)
endif()
if(TARGET hand_gesture_msgs_generate_messages_py)
  add_dependencies(hand_gesture_skill_generate_messages_py hand_gesture_msgs_generate_messages_py)
endif()
if(TARGET common_msgs_generate_messages_py)
  add_dependencies(hand_gesture_skill_generate_messages_py common_msgs_generate_messages_py)
endif()
