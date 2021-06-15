# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tablet_data_connections: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Icommon_msgs:/home/haobing/catkin_ws/src/common_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tablet_data_connections_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv" NAME_WE)
add_custom_target(_tablet_data_connections_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tablet_data_connections" "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(tablet_data_connections
  "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tablet_data_connections
)

### Generating Module File
_generate_module_cpp(tablet_data_connections
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tablet_data_connections
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tablet_data_connections_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tablet_data_connections_generate_messages tablet_data_connections_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv" NAME_WE)
add_dependencies(tablet_data_connections_generate_messages_cpp _tablet_data_connections_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tablet_data_connections_gencpp)
add_dependencies(tablet_data_connections_gencpp tablet_data_connections_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tablet_data_connections_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(tablet_data_connections
  "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tablet_data_connections
)

### Generating Module File
_generate_module_eus(tablet_data_connections
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tablet_data_connections
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tablet_data_connections_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tablet_data_connections_generate_messages tablet_data_connections_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv" NAME_WE)
add_dependencies(tablet_data_connections_generate_messages_eus _tablet_data_connections_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tablet_data_connections_geneus)
add_dependencies(tablet_data_connections_geneus tablet_data_connections_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tablet_data_connections_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(tablet_data_connections
  "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tablet_data_connections
)

### Generating Module File
_generate_module_lisp(tablet_data_connections
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tablet_data_connections
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tablet_data_connections_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tablet_data_connections_generate_messages tablet_data_connections_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv" NAME_WE)
add_dependencies(tablet_data_connections_generate_messages_lisp _tablet_data_connections_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tablet_data_connections_genlisp)
add_dependencies(tablet_data_connections_genlisp tablet_data_connections_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tablet_data_connections_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(tablet_data_connections
  "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tablet_data_connections
)

### Generating Module File
_generate_module_nodejs(tablet_data_connections
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tablet_data_connections
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tablet_data_connections_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tablet_data_connections_generate_messages tablet_data_connections_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv" NAME_WE)
add_dependencies(tablet_data_connections_generate_messages_nodejs _tablet_data_connections_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tablet_data_connections_gennodejs)
add_dependencies(tablet_data_connections_gennodejs tablet_data_connections_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tablet_data_connections_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(tablet_data_connections
  "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tablet_data_connections
)

### Generating Module File
_generate_module_py(tablet_data_connections
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tablet_data_connections
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tablet_data_connections_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tablet_data_connections_generate_messages tablet_data_connections_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/haobing/catkin_ws/src/tablet_data_connections/srv/PCTablet_Commands.srv" NAME_WE)
add_dependencies(tablet_data_connections_generate_messages_py _tablet_data_connections_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tablet_data_connections_genpy)
add_dependencies(tablet_data_connections_genpy tablet_data_connections_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tablet_data_connections_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tablet_data_connections)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tablet_data_connections
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tablet_data_connections_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET common_msgs_generate_messages_cpp)
  add_dependencies(tablet_data_connections_generate_messages_cpp common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tablet_data_connections)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tablet_data_connections
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tablet_data_connections_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET common_msgs_generate_messages_eus)
  add_dependencies(tablet_data_connections_generate_messages_eus common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tablet_data_connections)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tablet_data_connections
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tablet_data_connections_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET common_msgs_generate_messages_lisp)
  add_dependencies(tablet_data_connections_generate_messages_lisp common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tablet_data_connections)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tablet_data_connections
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tablet_data_connections_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET common_msgs_generate_messages_nodejs)
  add_dependencies(tablet_data_connections_generate_messages_nodejs common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tablet_data_connections)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tablet_data_connections\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tablet_data_connections
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tablet_data_connections
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tablet_data_connections/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tablet_data_connections_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET common_msgs_generate_messages_py)
  add_dependencies(tablet_data_connections_generate_messages_py common_msgs_generate_messages_py)
endif()
