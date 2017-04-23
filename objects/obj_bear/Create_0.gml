/// @description init
#macro b_patrol 1
#macro b_attack 2
#macro b_eat 3
#macro b_falling 4
#macro dead 5

XPOW = 60;
MAX_X_SPEED = 5;
EYE_SIGHT = 100;

image_speed = 0.2;
my_health = 100;
state = b_patrol;

phy_fixed_rotation = true;
looking_right = true;