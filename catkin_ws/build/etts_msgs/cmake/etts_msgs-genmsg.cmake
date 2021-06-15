# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "etts_msgs: 8 messages, 0 services")

set(MSG_I_FLAGS "-Ietts_msgs:/home/haobing/catkin_ws/src/etts_msgs/msg;-Ietts_msgs:/home/haobing/catkin_ws/devel/share/etts_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(etts_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg" "etts_msgs/UtteranceGoal:std_msgs/Header:etts_msgs/UtteranceActionFeedback:etts_msgs/UtteranceFeedback:etts_msgs/UtteranceActionGoal:etts_msgs/UtteranceActionResult:etts_msgs/Utterance:actionlib_msgs/GoalID:etts_msgs/UtteranceResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg" "etts_msgs/Utterance:std_msgs/Header"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:etts_msgs/UtteranceResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:etts_msgs/UtteranceFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg" "etts_msgs/UtteranceGoal:actionlib_msgs/GoalID:std_msgs/Header:etts_msgs/Utterance"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg" NAME_WE)
add_custom_target(_etts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "etts_msgs" "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)
_generate_msg_cpp(etts_msgs
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(etts_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(etts_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(etts_msgs_generate_messages etts_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_cpp _etts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etts_msgs_gencpp)
add_dependencies(etts_msgs_gencpp etts_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etts_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)
_generate_msg_eus(etts_msgs
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(etts_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(etts_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(etts_msgs_generate_messages etts_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_eus _etts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etts_msgs_geneus)
add_dependencies(etts_msgs_geneus etts_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etts_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)
_generate_msg_lisp(etts_msgs
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(etts_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(etts_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(etts_msgs_generate_messages etts_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_lisp _etts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etts_msgs_genlisp)
add_dependencies(etts_msgs_genlisp etts_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etts_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)
_generate_msg_nodejs(etts_msgs
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(etts_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(etts_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(etts_msgs_generate_messages etts_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_nodejs _etts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etts_msgs_gennodejs)
add_dependencies(etts_msgs_gennodejs etts_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etts_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)
_generate_msg_py(etts_msgs
  "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(etts_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(etts_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(etts_msgs_generate_messages etts_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg" NAME_WE)
add_dependencies(etts_msgs_generate_messages_py _etts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(etts_msgs_genpy)
add_dependencies(etts_msgs_genpy etts_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS etts_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/etts_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(etts_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(etts_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/etts_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(etts_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(etts_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/etts_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(etts_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(etts_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/etts_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(etts_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(etts_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/etts_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(etts_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(etts_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
