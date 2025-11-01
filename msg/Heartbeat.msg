# Note for heartbeat the head message describes, which node/publisher is sending
# the heartbeat. 

std_msgs/Header header

# Duration is actual duration it took for a message to be published.
builtin_interfaces/Duration duration

# Expected duration is the duration with reference to how it was set
# according to the timer. Ideally this should be the same as duration.
builtin_interfaces/Duration actual_duration