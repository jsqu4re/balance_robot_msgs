cmake_minimum_required(VERSION 3.5)

project(balance_robot_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(balance_robot_msgs
  "msg/Balance.msg"
  "msg/Pid.msg"
  "msg/Encoder.msg"
  "msg/Encoders.msg"
  "msg/Motor.msg"
  "msg/Motors.msg"
  "msg/Orientation.msg"
  DEPENDENCIES
    builtin_interfaces
    std_msgs
)

ament_package()
