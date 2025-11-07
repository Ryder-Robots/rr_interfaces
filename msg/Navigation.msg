std_msgs/Header header

# Point describing the current grid point
geometry_msgs/Vector3 current_point

# Heading vector, either current heading or next heading.
geometry_msgs/Vector3 heading_vector

# Delta describing the current duration of time heading in heading_vector
# direction.
builtin_interfaces/Duration current_delta

# Total time vector (total time of travel).
builtin_interfaces/Duration total_delta

# Current velocity
int32 current_velocity