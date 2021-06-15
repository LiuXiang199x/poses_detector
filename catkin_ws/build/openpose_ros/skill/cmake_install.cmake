# Install script for directory: /home/haobing/catkin_ws/src/openpose_ros/skill

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/haobing/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/haobing/catkin_ws/build/openpose_ros/skill/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/haobing/catkin_ws/build/openpose_ros/skill/catkin_generated/installspace/skill.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/skill/cmake" TYPE FILE FILES
    "/home/haobing/catkin_ws/build/openpose_ros/skill/catkin_generated/installspace/skillConfig.cmake"
    "/home/haobing/catkin_ws/build/openpose_ros/skill/catkin_generated/installspace/skillConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/skill" TYPE FILE FILES "/home/haobing/catkin_ws/src/openpose_ros/skill/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/skill" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/src/openpose_ros/skill/include/skill/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/skill" TYPE PROGRAM FILES
    "/home/haobing/catkin_ws/src/openpose_ros/skill/src/skill/skill.py"
    "/home/haobing/catkin_ws/src/openpose_ros/skill/src/test/test_basic_skill.py"
    "/home/haobing/catkin_ws/src/openpose_ros/skill/src/test/test_natural_skill.py"
    "/home/haobing/catkin_ws/src/openpose_ros/skill/src/test/test_skill.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/skill" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/src/openpose_ros/skill/" REGEX "/\\.svn$" EXCLUDE REGEX "/src$" EXCLUDE REGEX "/include$" EXCLUDE REGEX "/msg$" EXCLUDE REGEX "/srv$" EXCLUDE REGEX "/\\.git$" EXCLUDE REGEX "/\\.gitignore$" EXCLUDE REGEX "/nodes$" EXCLUDE REGEX "/[^/]*\\.txt$" EXCLUDE REGEX "/[^/]*\\.md$" EXCLUDE REGEX "/[^/]*\\.xml$" EXCLUDE REGEX "/LICENSE$" EXCLUDE)
endif()

