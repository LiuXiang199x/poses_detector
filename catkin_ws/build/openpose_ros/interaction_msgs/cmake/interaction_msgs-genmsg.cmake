# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interaction_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iinteraction_msgs:/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Icommon_msgs:/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interaction_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg" NAME_WE)
add_custom_target(_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interaction_msgs" "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg" NAME_WE)
add_custom_target(_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interaction_msgs" "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg" "std_msgs/Header:common_msgs/KeyValuePair"
)

get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg" NAME_WE)
add_custom_target(_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interaction_msgs" "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg" "std_msgs/Header:common_msgs/KeyValuePair"
)

get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg" NAME_WE)
add_custom_target(_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interaction_msgs" "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg" "std_msgs/Header:common_msgs/KeyValuePair"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interaction_msgs
)
_generate_msg_cpp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interaction_msgs
)
_generate_msg_cpp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interaction_msgs
)
_generate_msg_cpp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interaction_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interaction_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interaction_msgs_generate_messages interaction_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_cpp _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_cpp _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_cpp _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_cpp _interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interaction_msgs_gencpp)
add_dependencies(interaction_msgs_gencpp interaction_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interaction_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interaction_msgs
)
_generate_msg_eus(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interaction_msgs
)
_generate_msg_eus(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interaction_msgs
)
_generate_msg_eus(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interaction_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(interaction_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(interaction_msgs_generate_messages interaction_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_eus _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_eus _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_eus _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_eus _interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interaction_msgs_geneus)
add_dependencies(interaction_msgs_geneus interaction_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interaction_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interaction_msgs
)
_generate_msg_lisp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interaction_msgs
)
_generate_msg_lisp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interaction_msgs
)
_generate_msg_lisp(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interaction_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interaction_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interaction_msgs_generate_messages interaction_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_lisp _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_lisp _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_lisp _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_lisp _interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interaction_msgs_genlisp)
add_dependencies(interaction_msgs_genlisp interaction_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interaction_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interaction_msgs
)
_generate_msg_nodejs(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interaction_msgs
)
_generate_msg_nodejs(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interaction_msgs
)
_generate_msg_nodejs(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interaction_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(interaction_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(interaction_msgs_generate_messages interaction_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_nodejs _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_nodejs _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_nodejs _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_nodejs _interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interaction_msgs_gennodejs)
add_dependencies(interaction_msgs_gennodejs interaction_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interaction_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs
)
_generate_msg_py(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs
)
_generate_msg_py(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs
)
_generate_msg_py(interaction_msgs
  "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/haobing/catkin_ws/src/openpose_ros/common_msgs/msg/KeyValuePair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interaction_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interaction_msgs_generate_messages interaction_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/ExpressionStatus.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_py _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CaResult.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_py _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/CA.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_py _interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/haobing/catkin_ws/src/openpose_ros/interaction_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(interaction_msgs_generate_messages_py _interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interaction_msgs_genpy)
add_dependencies(interaction_msgs_genpy interaction_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interaction_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interaction_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interaction_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(interaction_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET common_msgs_generate_messages_cpp)
  add_dependencies(interaction_msgs_generate_messages_cpp common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interaction_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interaction_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(interaction_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET common_msgs_generate_messages_eus)
  add_dependencies(interaction_msgs_generate_messages_eus common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interaction_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interaction_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(interaction_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET common_msgs_generate_messages_lisp)
  add_dependencies(interaction_msgs_generate_messages_lisp common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interaction_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interaction_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(interaction_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET common_msgs_generate_messages_nodejs)
  add_dependencies(interaction_msgs_generate_messages_nodejs common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interaction_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(interaction_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET common_msgs_generate_messages_py)
  add_dependencies(interaction_msgs_generate_messages_py common_msgs_generate_messages_py)
endif()
