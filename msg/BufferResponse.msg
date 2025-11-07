# Buffer service provides a list of features that act as input for the 
# core network.

std_msgs/Header header

# Message identifier
unique_identifier_msgs/UUID guid
unique_identifier_msgs/UUID request_id
int64 seq

# Navigation settings
Navigation navigation

# Support for NEO-6M, note that package ublox_gps, this will publish to topics
# /fix and /vel
sensor_msgs/NavSatFix gps

# Joystick support.
sensor_msgs/Joy joystick

# battery feedback (if suported by power board).
sensor_msgs/BatteryState batt_state

# Video stream, done via camera_ros
sensor_msgs/Image img

# IMU. Gyro, Mangnometer, etc
sensor_msgs/Imu imu

# Ultra sonic sensors
sensor_msgs/Range[] ranges

FeatureSet feature_sets