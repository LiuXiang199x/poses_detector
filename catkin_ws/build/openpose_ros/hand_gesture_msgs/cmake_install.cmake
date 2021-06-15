# Install script for directory: /home/haobing/catkin_ws/src/openpose_ros/hand_gesture_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hand_gesture_msgs/msg" TYPE FILE FILES
    "/home/haobing/catkin_ws/src/openpose_ros/hand_gesture_msgs/msg/HandLandmark.msg"
    "/home/haobing/catkin_ws/src/openpose_ros/hand_gesture_msgs/msg/HandLandmarks.msg"
    "/home/haobing/catkin_ws/src/openpose_ros/hand_gesture_msgs/msg/HandGesture.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hand_gesture_msgs/cmake" TYPE FILE FILES "/home/haobing/catkin_ws/build/openpose_ros/hand_gesture_msgs/catkin_generated/installspace/hand_gesture_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/include/hand_gesture_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/roseus/ros/hand_gesture_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/common-lisp/ros/hand_gesture_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/gennodejs/ros/hand_gesture_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/haobing/catkin_ws/devel/lib/python2.7/dist-packages/hand_gesture_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/lib/python2.7/dist-packages/hand_gesture_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/haobing/catkin_ws/build/openpose_ros/hand_gesture_msgs/catkin_generated/installspace/hand_gesture_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hand_gesture_msgs/cmake" TYPE FILE FILES "/home/haobing/catkin_ws/build/openpose_ros/hand_gesture_msgs/catkin_generated/installspace/hand_gesture_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hand_gesture_msgs/cmake" TYPE FILE FILES
    "/home/haobing/catkin_ws/build/openpose_ros/hand_gesture_msgs/catkin_generated/installspace/hand_gesture_msgsConfig.cmake"
    "/home/haobing/catkin_ws/build/openpose_ros/hand_gesture_msgs/catkin_generated/installspace/hand_gesture_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hand_gesture_msgs" TYPE FILE FILES "/home/haobing/catkin_ws/src/openpose_ros/hand_gesture_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hand_gesture_msgs" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/src/openpose_ros/hand_gesture_msgs/" REGEX "/\\.svn$" EXCLUDE REGEX "/src$" EXCLUDE REGEX "/include$" EXCLUDE REGEX "/msg$" EXCLUDE REGEX "/srv$" EXCLUDE REGEX "/\\.git$" EXCLUDE REGEX "/\\.gitignore$" EXCLUDE REGEX "/nodes$" EXCLUDE REGEX "/[^/]*\\.md$" EXCLUDE REGEX "/setup\\.py$" EXCLUDE)
endif()

