# Response from a motor controller containing encoder feedback.
# Reports velocity, pulse counts, and health metrics for
# motor monitoring and diagnostics.

std_msgs/Header header
float64 velocity       # average ppr per second
int32 total_pulses     # total number of pulses since motor started.
int32 healthy_pulses   # number of pulses that are within the expected range, used for health monitoring.
int32 boundary_triggers # pulses that triggered at the edge of a rotation