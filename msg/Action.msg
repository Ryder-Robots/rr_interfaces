# One of the values will be set, depending on the message type sent by the 
# action node. For instance if the action node is for IMU, then the Imu
# value beneath will be set.

std_msgs/Header header

# IMU. Gyro, Mangnometer, etc
sensor_msgs/Imu imu

# Ultra sonic sensors, currently supports 3 ranges
sensor_msgs/Range[3] ranges

# Current message supports up to 4 motors,
# this could be made unbounded in future versions
Motor[4] motors