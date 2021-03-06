///@description  handle player standing state
image_speed = 0.3;
// if  not standing switch to falling
if(!physics_test_overlap(x, y, 0, obj_land)){
	state = p_falling;
	return;
}

// Can only attack while standing
if(attack){
	state = attacking;
	return;
}

if(phy_speed_x = 0){
	sprite_index = spr_player_idle;
	image_speed = .15;
} else {
	sprite_index = spr_player_run;
	image_speed = 0.3;
}


if(left and !right){
	physics_apply_force(x,y,-XPOW,0);
}
if(!left and right){
	physics_apply_force(x,y,XPOW,0);
}
if(jump){
	physics_apply_impulse(x,y,0,-YPOW);
	audio_play_sound(snd_jump,1,false);
}

