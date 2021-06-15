# Install script for directory: /home/haobing/catkin_ws/src/etts_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/msg" TYPE FILE FILES "/home/haobing/catkin_ws/src/etts_msgs/msg/Utterance.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/action" TYPE FILE FILES "/home/haobing/catkin_ws/src/etts_msgs/action/Utterance.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/msg" TYPE FILE FILES
    "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceAction.msg"
    "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionGoal.msg"
    "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionResult.msg"
    "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceActionFeedback.msg"
    "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceGoal.msg"
    "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceResult.msg"
    "/home/haobing/catkin_ws/devel/share/etts_msgs/msg/UtteranceFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/cmake" TYPE FILE FILES "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/include/etts_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/roseus/ros/etts_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/common-lisp/ros/etts_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/gennodejs/ros/etts_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/haobing/catkin_ws/devel/lib/python2.7/dist-packages/etts_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/lib/python2.7/dist-packages/etts_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/cmake" TYPE FILE FILES "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/cmake" TYPE FILE FILES
    "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgsConfig.cmake"
    "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs" TYPE FILE FILES "/home/haobing/catkin_ws/src/etts_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/cmake" TYPE FILE FILES "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs/cmake" TYPE FILE FILES
    "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgsConfig.cmake"
    "/home/haobing/catkin_ws/build/etts_msgs/catkin_generated/installspace/etts_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs" TYPE FILE FILES "/home/haobing/catkin_ws/src/etts_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/etts_msgs" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/src/etts_msgs/include/etts_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/etts_msgs" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/src/etts_msgs" REGEX "/\\.svn$" EXCLUDE REGEX "/src$" EXCLUDE REGEX "/include$" EXCLUDE REGEX "/msg$" EXCLUDE REGEX "/srv$" EXCLUDE REGEX "/\\.git$" EXCLUDE REGEX "/\\.gitignore$" EXCLUDE REGEX "/nodes$" EXCLUDE REGEX "/[^/]*\\.txt$" EXCLUDE REGEX "/[^/]*\\.md$" EXCLUDE REGEX "/[^/]*\\.xml$" EXCLUDE REGEX "/LICENSE$" EXCLUDE REGEX "/ACTION$" EXCLUDE)
endif()

