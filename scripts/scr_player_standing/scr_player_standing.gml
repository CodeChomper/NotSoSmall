///@description  handle player standing state

if(left and !right){
	physics_apply_force(x,y,-XPOW,0);
}
if(!left and right){
	physics_apply_force(x,y,XPOW,0);
}


if(!physics_test_overlap(x, y, 0, obj_land)){
	state = falling;
}