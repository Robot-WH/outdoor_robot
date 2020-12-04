# Install script for directory: /home/mini/code/outdoor_robot/src/package/dashan_msg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mini/code/outdoor_robot/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg/msg" TYPE FILE FILES
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/wheelSpeed.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/diagnosis.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/imudata.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/Mode.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/SaveMap.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/hmiStatus.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/zhishancmd.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/customRoute.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/xyyawdata.msg"
    "/home/mini/code/outdoor_robot/src/package/dashan_msg/msg/ribbontask.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg/cmake" TYPE FILE FILES "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msg-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mini/code/outdoor_robot/devel/include/dashan_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mini/code/outdoor_robot/devel/share/roseus/ros/dashan_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mini/code/outdoor_robot/devel/share/common-lisp/ros/dashan_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mini/code/outdoor_robot/devel/share/gennodejs/ros/dashan_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mini/code/outdoor_robot/devel/lib/python2.7/dist-packages/dashan_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mini/code/outdoor_robot/devel/lib/python2.7/dist-packages/dashan_msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msg.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg/cmake" TYPE FILE FILES "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msg-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg/cmake" TYPE FILE FILES
    "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msgConfig.cmake"
    "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msgConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg" TYPE FILE FILES "/home/mini/code/outdoor_robot/src/package/dashan_msg/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msg.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg/cmake" TYPE FILE FILES "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msg-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg/cmake" TYPE FILE FILES
    "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msgConfig.cmake"
    "/home/mini/code/outdoor_robot/build/package/dashan_msg/catkin_generated/installspace/dashan_msgConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dashan_msg" TYPE FILE FILES "/home/mini/code/outdoor_robot/src/package/dashan_msg/package.xml")
endif()

