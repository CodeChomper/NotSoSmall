///@desription bear patrol state

//Look in front of bear and down
var x_delta = looking_right ? 100 : -100;
if(physics_test_overlap(x + x_delta, y, 0, obj_land)){
// If there is land there then walk that direction
	physics_apply_force(x,y,looking_right?40:-40,0);
} else {
// If not then turn around
	looking_right *= -1; //Flips a true false statement
}