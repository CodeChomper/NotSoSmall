///@desription bear patrol state

// Check if standing on ground
if(!physics_test_overlap(x, y, 0, obj_land)){
	state = b_falling;
	return; // This exits the code so none of the patrol code runs.
}

// Check if player is near and go into attack state
if(distance_to_object(obj_player) < EYE_SIGHT){
	state = b_attack;
	return;
}


//Look in front of bear and down
var x_delta = looking_right ? 100 + phy_speed_x : -100 + phy_speed_x;
if(physics_test_overlap(x + x_delta, y, 0, obj_land)){
// If there is land there then walk that direction
	if(abs(phy_speed_x) < MAX_X_SPEED){
		physics_apply_force(x,y,looking_right?XPOW:-XPOW,0);
	}
} else {
// If not then turn around
	looking_right *= -1; //Flips a true false statement
}