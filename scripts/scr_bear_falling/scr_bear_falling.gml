///@description bear falling state

// All this does is wait until on ground to patrol again.
if(physics_test_overlap(x, y, 0, obj_land)){
	state = b_patrol;
}