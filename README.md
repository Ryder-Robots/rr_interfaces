# Ryder Robots Interfaces

Contains the actions, messages and other communication objects used for Ryder robots.

## Communication Protocol

Events provided to interfaces are represented by int32, and are defined beneath.

### Commands

| ID      | CONSTANT        |  SENSOR   | DESCRIPTION              |
| ------  | --------------  | --------- | ------------------------ |
| 200     | MSP_SET_RAW_RC  | Motors    | Sets motors              |

### Monitor Commands

| ID      | CONSTANT        |  SENSOR   | DESCRIPTION                            |
| ------  | --------------  | --------- |  ------------------------------------- |
| 100     | MSP_IDENT       | NA        | protocol version + capability variable |
| 102     | MSP_RAW_IMU     | IMU       | Monitor IMU details                    |
| 104     | MSP_MOTOR       | MOTORS    | Set, or monitor motors                 |
| 105     | MSP_RAW_SENSORS | Range     | Range sensors                          |

## Messages

| Message       | Description                                                     |
| ------------- | --------------------------------------------------------------- |
| Action        | Represents a command action with an event ID                    |
| Motor         | Individual motor state (direction and PWM)                      |
| Motors        | Array of Motor messages sent on a single topic                  |
| MotorResponse | Motor controller encoder feedback (velocity, pulses, health)    |
| FeatureSet    | Feature set data                                                |
| StateFrame    | State frame data                                                |

## Actions

| Action           | Description         |
| ---------------- | ------------------- |
| MonitorImuAction | Monitor IMU details |

## Services

| Service   | Description            |
| --------- | ---------------------- |
| State     | State service          |
| SensorCmd | Sensor command service |
| Monitor   | Monitor service        |

## Build Instructions

```bash
curl -fsSL https://ryder-robots.github.io/rr-apt/public.gpg | sudo gpg --dearmor -o /usr/share/keyrings/rr-apt.gpg
echo "deb [signed-by=/usr/share/keyrings/rr-apt.gpg] https://ryder-robots.github.io/rr-apt noble main" | sudo tee /etc/apt/sources.list.d/rr-apt.list

# Install
sudo apt update
sudo apt install ros-kilted-rr-interfaces
```

or

```bash
mkdir -p ~/rr_quadx_ws
cd ~/rr_quadx_ws
mkdir -p src
cd src
git clone git@github.com:Ryder-Robots/rr_interfaces.git
cd ~/rr_quadx_ws
colcon build --packages-select rr_interfaces --packages-up-to rr_interfaces
source install/local_setup.bash
ros2 interface list | grep rr_interfaces
```

Output should show

* rr_interfaces/action/MonitorImuAction
* rr_interfaces/msg/Action
* rr_interfaces/msg/FeatureSet
* rr_interfaces/msg/Motor
* rr_interfaces/msg/MotorResponse
* rr_interfaces/msg/Motors
* rr_interfaces/msg/StateFrame
* rr_interfaces/srv/Monitor
* rr_interfaces/srv/SensorCmd
* rr_interfaces/srv/State

## References

* [Creating an action](https://docs.ros.org/en/jazzy/Tutorials/Intermediate/Creating-an-Action.html)
* [Basic Types](https://docs.ros2.org/latest/api/test_msgs/msg/BasicTypes.html)
* [MultiWii](https://github.com/multiwii/multiwii-firmware/blob/upstream_shared/Protocol.cpp)
* [Reefwing-MSP](https://github.com/Reefwing-Software/Reefwing-MSP)
