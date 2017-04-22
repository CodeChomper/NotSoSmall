///@description  handle player standing state

// if  not standing switch to falling
if(!physics_test_overlap(x, y, 0, obj_land)){
	state = p_falling;
	return;
}

// Can only attack while standing
if(attack){
	state = p_attacking;
	return;
}

if(phy_speed_x = 0){
	sprite_index = spr_player_idle;
} else {
	sprite_index = spr_player_run;
}


if(left and !right){
	physics_apply_force(x,y,-XPOW,0);
}
if(!left and right){
	physics_apply_force(x,y,XPOW,0);
}
if(jump){
	physics_apply_impulse(x,y,0,-YPOW);
}

