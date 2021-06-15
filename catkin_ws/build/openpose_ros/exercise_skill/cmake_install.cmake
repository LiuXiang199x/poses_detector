# Install script for directory: /home/haobing/catkin_ws/src/openpose_ros/exercise_skill

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exercise_skill/action" TYPE FILE FILES "/home/haobing/catkin_ws/src/openpose_ros/exercise_skill/action/Exercise.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exercise_skill/msg" TYPE FILE FILES
    "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseAction.msg"
    "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionGoal.msg"
    "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionResult.msg"
    "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseActionFeedback.msg"
    "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseGoal.msg"
    "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseResult.msg"
    "/home/haobing/catkin_ws/devel/share/exercise_skill/msg/ExerciseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exercise_skill/cmake" TYPE FILE FILES "/home/haobing/catkin_ws/build/openpose_ros/exercise_skill/catkin_generated/installspace/exercise_skill-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/include/exercise_skill")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/roseus/ros/exercise_skill")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/common-lisp/ros/exercise_skill")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/share/gennodejs/ros/exercise_skill")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/haobing/catkin_ws/devel/lib/python2.7/dist-packages/exercise_skill")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/haobing/catkin_ws/devel/lib/python2.7/dist-packages/exercise_skill")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/haobing/catkin_ws/build/openpose_ros/exercise_skill/catkin_generated/installspace/exercise_skill.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exercise_skill/cmake" TYPE FILE FILES "/home/haobing/catkin_ws/build/openpose_ros/exercise_skill/catkin_generated/installspace/exercise_skill-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exercise_skill/cmake" TYPE FILE FILES
    "/home/haobing/catkin_ws/build/openpose_ros/exercise_skill/catkin_generated/installspace/exercise_skillConfig.cmake"
    "/home/haobing/catkin_ws/build/openpose_ros/exercise_skill/catkin_generated/installspace/exercise_skillConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exercise_skill" TYPE FILE FILES "/home/haobing/catkin_ws/src/openpose_ros/exercise_skill/package.xml")
endif()

