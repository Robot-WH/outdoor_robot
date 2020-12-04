cmake_minimum_required(VERSION 2.8.3)
project(indoor_localization)

set(CMAKE_BUILD_TYPE "Release" )
set(CMAKE_CXX_FLAGS "-std=c++11")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall -g")

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp               
  rospy
  std_msgs
  dashan_msg
  # pcl_conversions
  # pcl_msgs
  # pcl_ros
  sensor_msgs
  message_generation     # 如果自己定义了消息的话  
  tf
)

#find_package(glog REQUIRED)
find_package(catkin REQUIRED )


###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(

)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS} 
)

# 生成共享库  .so  
# add_library(${PROJECT_NAME} SHARED
 
# )

add_executable(odometry app/odometry_node.cpp)
target_link_libraries(odometry
  ${catkin_LIBRARIES}

)

