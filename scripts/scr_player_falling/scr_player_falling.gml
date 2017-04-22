// Air control
sprite_index = spr_player_jump;
if(right and not left){
	physics_apply_force(x,y,XPOW,0);
}
if(left and not right){
	physics_apply_force(x,y,-XPOW,0);
}


// Switch to standing if landed on ground
if(physics_test_overlap(x, y, 0, obj_land)){
	state = standing;
}