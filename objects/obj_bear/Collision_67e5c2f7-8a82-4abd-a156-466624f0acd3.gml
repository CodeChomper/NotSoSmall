/// @description Touch player

if(obj_player.state == p_attacking){
	// Need to make a jump back animation
	my_health -= 100; //Insta Kill for now
} else {
	// Need to make a jump back animation
	obj_player.my_health -= 25; // Four frames of touching
}