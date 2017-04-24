/// @description Init player
#macro p_falling 1
#macro p_standing 2
#macro p_jumping 3
#macro attacking 4
my_health = 100;
XPOW = 90;
YPOW = 65;
state = p_falling;
facing_right = true;
image_speed = 0.15; // Very close to the beat good enough for now
phy_fixed_rotation = true;
