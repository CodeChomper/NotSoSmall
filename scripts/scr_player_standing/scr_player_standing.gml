///@description  handle player standing state

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

if(!physics_test_overlap(x, y, 0, obj_land)){
	state = falling;
}