std_msgs/Header header

float64[6] x    # current state
float64[6] lp_x # lowpass current state
float64[6] c    # calibration data
float64[6] w    # target state
float64[6] k    # control gain
float64[1] u    # control input
