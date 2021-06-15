# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hand_gesture_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ihand_gesture_msgs:/home/haobing/catkin_ws/src/hand_gesture_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hand_gesture_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg" NAME_WE)
add_custom_target(_hand_gesture_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_msgs" "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg" NAME_WE)
add_custom_target(_hand_gesture_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_msgs" "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg" ""
)

get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg" NAME_WE)
add_custom_target(_hand_gesture_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_gesture_msgs" "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg" "hand_gesture_msgs/HandLandmark"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_cpp(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_cpp(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hand_gesture_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hand_gesture_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hand_gesture_msgs_generate_messages hand_gesture_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_cpp _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_cpp _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_cpp _hand_gesture_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_msgs_gencpp)
add_dependencies(hand_gesture_msgs_gencpp hand_gesture_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_eus(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_eus(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(hand_gesture_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hand_gesture_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hand_gesture_msgs_generate_messages hand_gesture_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_eus _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_eus _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_eus _hand_gesture_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_msgs_geneus)
add_dependencies(hand_gesture_msgs_geneus hand_gesture_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_lisp(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_lisp(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hand_gesture_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hand_gesture_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hand_gesture_msgs_generate_messages hand_gesture_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_lisp _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_lisp _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_lisp _hand_gesture_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_msgs_genlisp)
add_dependencies(hand_gesture_msgs_genlisp hand_gesture_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_nodejs(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_nodejs(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hand_gesture_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hand_gesture_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hand_gesture_msgs_generate_messages hand_gesture_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_nodejs _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_nodejs _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_nodejs _hand_gesture_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_msgs_gennodejs)
add_dependencies(hand_gesture_msgs_gennodejs hand_gesture_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_py(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_msgs
)
_generate_msg_py(hand_gesture_msgs
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hand_gesture_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hand_gesture_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hand_gesture_msgs_generate_messages hand_gesture_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmark.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_py _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandGesture.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_py _hand_gesture_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/hand_gesture_msgs/msg/HandLandmarks.msg" NAME_WE)
add_dependencies(hand_gesture_msgs_generate_messages_py _hand_gesture_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_gesture_msgs_genpy)
add_dependencies(hand_gesture_msgs_genpy hand_gesture_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_gesture_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_gesture_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hand_gesture_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_gesture_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hand_gesture_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_gesture_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hand_gesture_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_gesture_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hand_gesture_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_gesture_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hand_gesture_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
