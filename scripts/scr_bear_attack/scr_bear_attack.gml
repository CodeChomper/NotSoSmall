///@description Bear attack state

// Check if player is near and go into attack state
if(distance_to_object(obj_player) > EYE_SIGHT){
	state = b_patrol;
	return;
}

if(obj_player.phy_position_x > phy_position_x){
	looking_right = true;
} else {
	looking_right = false;
}
if(abs(phy_speed_x) < MAX_X_SPEED){
		physics_apply_force(x,y,looking_right ? 2 * XPOW: 2 * -XPOW,0);
}