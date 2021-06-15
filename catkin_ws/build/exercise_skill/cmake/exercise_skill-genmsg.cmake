# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exercise_skill: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iexercise_skill:/home/haobing/catkin_ws/devel/share/exercise_skill/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Iinteraction_msgs:/home/haobing/catkin_ws/src/interaction_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Icommon_msgs:/home/haobing/catkin_ws/src/common_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exercise_skill_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg" NAME_WE)
add_custom_target(_exercise_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercise_skill" "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg" "common_msgs/KeyValuePair:exercise_skill/ExerciseFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg" NAME_WE)
add_custom_target(_exercise_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercise_skill" "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg" "exercise_skill/ExerciseResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg" NAME_WE)
add_custom_target(_exercise_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercise_skill" "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:exercise_skill/ExerciseGoal"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg" NAME_WE)
add_custom_target(_exercise_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercise_skill" "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg" NAME_WE)
add_custom_target(_exercise_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercise_skill" "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg" NAME_WE)
add_custom_target(_exercise_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercise_skill" "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg" "common_msgs/KeyValuePair:actionlib_msgs/GoalStatus:exercise_skill/ExerciseGoal:exercise_skill/ExerciseActionGoal:exercise_skill/ExerciseActionFeedback:exercise_skill/ExerciseActionResult:exercise_skill/ExerciseFeedback:exercise_skill/ExerciseResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg" NAME_WE)
add_custom_target(_exercise_skill_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exercise_skill" "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg" "common_msgs/KeyValuePair"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
)
_generate_msg_cpp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
)
_generate_msg_cpp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
)
_generate_msg_cpp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
)
_generate_msg_cpp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
)
_generate_msg_cpp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
)
_generate_msg_cpp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
)

### Generating Services

### Generating Module File
_generate_module_cpp(exercise_skill
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exercise_skill_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exercise_skill_generate_messages exercise_skill_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_cpp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_cpp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_cpp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_cpp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_cpp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_cpp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_cpp _exercise_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercise_skill_gencpp)
add_dependencies(exercise_skill_gencpp exercise_skill_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercise_skill_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
)
_generate_msg_eus(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
)
_generate_msg_eus(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
)
_generate_msg_eus(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
)
_generate_msg_eus(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
)
_generate_msg_eus(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
)
_generate_msg_eus(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
)

### Generating Services

### Generating Module File
_generate_module_eus(exercise_skill
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(exercise_skill_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(exercise_skill_generate_messages exercise_skill_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_eus _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_eus _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_eus _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_eus _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_eus _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_eus _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_eus _exercise_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercise_skill_geneus)
add_dependencies(exercise_skill_geneus exercise_skill_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercise_skill_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
)
_generate_msg_lisp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
)
_generate_msg_lisp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
)
_generate_msg_lisp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
)
_generate_msg_lisp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
)
_generate_msg_lisp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
)
_generate_msg_lisp(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
)

### Generating Services

### Generating Module File
_generate_module_lisp(exercise_skill
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exercise_skill_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exercise_skill_generate_messages exercise_skill_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_lisp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_lisp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_lisp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_lisp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_lisp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_lisp _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_lisp _exercise_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercise_skill_genlisp)
add_dependencies(exercise_skill_genlisp exercise_skill_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercise_skill_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
)
_generate_msg_nodejs(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
)
_generate_msg_nodejs(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
)
_generate_msg_nodejs(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
)
_generate_msg_nodejs(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
)
_generate_msg_nodejs(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
)
_generate_msg_nodejs(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
)

### Generating Services

### Generating Module File
_generate_module_nodejs(exercise_skill
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(exercise_skill_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(exercise_skill_generate_messages exercise_skill_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_nodejs _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_nodejs _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_nodejs _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_nodejs _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_nodejs _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_nodejs _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_nodejs _exercise_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercise_skill_gennodejs)
add_dependencies(exercise_skill_gennodejs exercise_skill_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercise_skill_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
)
_generate_msg_py(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
)
_generate_msg_py(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
)
_generate_msg_py(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
)
_generate_msg_py(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
)
_generate_msg_py(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg;/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
)
_generate_msg_py(exercise_skill
  "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
)

### Generating Services

### Generating Module File
_generate_module_py(exercise_skill
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exercise_skill_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exercise_skill_generate_messages exercise_skill_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_py _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_py _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_py _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_py _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_py _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_py _exercise_skill_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg" NAME_WE)
add_dependencies(exercise_skill_generate_messages_py _exercise_skill_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exercise_skill_genpy)
add_dependencies(exercise_skill_genpy exercise_skill_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exercise_skill_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exercise_skill
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(exercise_skill_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET interaction_msgs_generate_messages_cpp)
  add_dependencies(exercise_skill_generate_messages_cpp interaction_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(exercise_skill_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET common_msgs_generate_messages_cpp)
  add_dependencies(exercise_skill_generate_messages_cpp common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exercise_skill
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(exercise_skill_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET interaction_msgs_generate_messages_eus)
  add_dependencies(exercise_skill_generate_messages_eus interaction_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(exercise_skill_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET common_msgs_generate_messages_eus)
  add_dependencies(exercise_skill_generate_messages_eus common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exercise_skill
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(exercise_skill_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET interaction_msgs_generate_messages_lisp)
  add_dependencies(exercise_skill_generate_messages_lisp interaction_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(exercise_skill_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET common_msgs_generate_messages_lisp)
  add_dependencies(exercise_skill_generate_messages_lisp common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exercise_skill
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(exercise_skill_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET interaction_msgs_generate_messages_nodejs)
  add_dependencies(exercise_skill_generate_messages_nodejs interaction_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(exercise_skill_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET common_msgs_generate_messages_nodejs)
  add_dependencies(exercise_skill_generate_messages_nodejs common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exercise_skill
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(exercise_skill_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET interaction_msgs_generate_messages_py)
  add_dependencies(exercise_skill_generate_messages_py interaction_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(exercise_skill_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET common_msgs_generate_messages_py)
  add_dependencies(exercise_skill_generate_messages_py common_msgs_generate_messages_py)
endif()
