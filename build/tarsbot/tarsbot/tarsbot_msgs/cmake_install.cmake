# Install script for directory: /home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ammari/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tarsbot_msgs/msg" TYPE FILE FILES
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/Encoders.msg"
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/EncodersStamped.msg"
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/AngularVelocities.msg"
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/AngularVelocitiesStamped.msg"
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/WheelsCmd.msg"
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/WheelsCmdStamped.msg"
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/PID.msg"
    "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/msg/PIDStamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tarsbot_msgs/cmake" TYPE FILE FILES "/home/ammari/catkin_ws/build/tarsbot/tarsbot/tarsbot_msgs/catkin_generated/installspace/tarsbot_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ammari/catkin_ws/devel/include/tarsbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ammari/catkin_ws/devel/share/roseus/ros/tarsbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ammari/catkin_ws/devel/share/common-lisp/ros/tarsbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ammari/catkin_ws/devel/share/gennodejs/ros/tarsbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ammari/catkin_ws/devel/lib/python3/dist-packages/tarsbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ammari/catkin_ws/devel/lib/python3/dist-packages/tarsbot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ammari/catkin_ws/build/tarsbot/tarsbot/tarsbot_msgs/catkin_generated/installspace/tarsbot_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tarsbot_msgs/cmake" TYPE FILE FILES "/home/ammari/catkin_ws/build/tarsbot/tarsbot/tarsbot_msgs/catkin_generated/installspace/tarsbot_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tarsbot_msgs/cmake" TYPE FILE FILES
    "/home/ammari/catkin_ws/build/tarsbot/tarsbot/tarsbot_msgs/catkin_generated/installspace/tarsbot_msgsConfig.cmake"
    "/home/ammari/catkin_ws/build/tarsbot/tarsbot/tarsbot_msgs/catkin_generated/installspace/tarsbot_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tarsbot_msgs" TYPE FILE FILES "/home/ammari/catkin_ws/src/tarsbot/tarsbot/tarsbot_msgs/package.xml")
endif()

