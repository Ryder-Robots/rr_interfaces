# Response, and request for motors is identical.
#
# As with range, the link_id in the header will define which motor
# to use.

std_msgs/Header header

# Values are set as following:
# 0x0000 not set
# 0x0001 positive polarity (clockwise)
# 0x0010 negative polarity (counter clockwise)
byte direction 0x0000

# level of polarity to use.
int32 pwm  0