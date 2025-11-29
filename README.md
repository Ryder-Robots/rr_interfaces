# Ryer Robots Interfaces

Contains the actions, messages and other communication objects used for Ryder robots.

## Communication Protocol

Events provied to interfaces, are represented by int32, and are defined beneath.

### Commands
| ID      | CONSTANT        |  SENSOR   | DESCRIPTION              |
| ------  | --------------  | --------- | ------------------------ |
| 200     | MSP_SET_RAW_RC. | Motors.   | Sets motors              |


### Monitor Commands

| ID.     | CONSTANT        |  SENSOR   | DESCRIPTION              |
| ------  | --------------  | --------- | ------------------------ |
| 102     | MSP_RAW_IMU.    | IMU       | Monitor IMU details      |
| 104     | MSP_MOTOR       | MOTORS    | Set, or monitor motors.  |
| 105     | MSP_RAW_SENSORS | Range     | Range sensors            |



## Build Instructions

```bash
mkdir -p ~/rr_quadx_ws
cd ~/rr_quadx_ws
mkdir -p src
cd src
git@github.com:Ryder-Robots/rr_interfaces.git
cd ~/rr_quadx_ws
colcon build --packages-select rr_interfaces --packages-up-to rr_interfaces
source install/local_setup.bash
ros2 interface list | grep rr_interfaces
```

Output should show

* rr_interfaces/action/ImageAction


## References

* [Creating an action](https://docs.ros.org/en/jazzy/Tutorials/Intermediate/Creating-an-Action.html)
* [Basic Types](https://docs.ros2.org/latest/api/test_msgs/msg/BasicTypes.html)
* [MultiWii](https://github.com/multiwii/multiwii-firmware/blob/upstream_shared/Protocol.cpp)
* [Reefwing-MSP](https://github.com/Reefwing-Software/Reefwing-MSP)