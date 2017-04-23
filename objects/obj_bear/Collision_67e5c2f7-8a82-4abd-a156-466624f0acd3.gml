/// @description Touch player


	// Need to make a jump back animation
if(scr_being_attacked_by(obj_player)){
		my_health -= 10;
} else {
	// Need to make a jump back animation
	obj_player.my_health -= 25; // Four frames of touching
}