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

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/FeatureSet.msg" 
  "msg/BufferResponse.msg" 
  "msg/Heartbeat.msg" 
  "srv/StateResponse.srv" 
  "srv/StateGpsReq.srv"
  "srv/StateJoyReq.srv"
  "srv/StateBattReq.srv"
  "srv/StateImage.srv"
  "srv/StateImu.srv"
  "srv/StateLeftFrontRange.srv"
  "srv/StateRightFrontRange.srv"
  "srv/StateMiddleFrontRange.srv"
  DEPENDENCIES builtin_interfaces sensor_msgs unique_identifier_msgs
)

ament_package()
