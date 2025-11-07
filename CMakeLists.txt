cmake_minimum_required(VERSION 3.8)
project(rr_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(unique_identifier_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/FeatureSet.msg"
  "msg/BufferRequest.msg"
  "msg/BufferResponse.msg" 
  "msg/Heartbeat.msg"
  "msg/Navigation.msg"
  "srv/BatteryState.srv"
  "srv/Gps.srv"
  "srv/Image.srv"
  "srv/Imu.srv"
  "srv/Joy.srv"
  "srv/Navigation.srv"
  "srv/Range.srv"
  "srv/State.srv" 
  DEPENDENCIES builtin_interfaces sensor_msgs unique_identifier_msgs  geometry_msgs
)

ament_package()
