# Ryer Robots Interfaces

Contains the actions, messages and other communication objects used for Ryder robots.

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