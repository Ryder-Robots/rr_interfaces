# All motor messages are sent on the same topic, each
# motor controller will read the message and look for the
# specific element within the motor array that corresponds to it.
#
# This is done in order to allow multiple motors to act in a time
# close to real time, removing jitter while commands are sent
# to the motors in linear order.

std_msgs/Header header
Motor[] motors