/// @description Player state controller

//Get which keys are pressed
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
jump = keyboard_check(vk_up);


//handle direction switching
if(phy_speed_x > 0 and !facing_right){
	facing_right = true;
	image_xscale = 1;
}
if(phy_speed_x < 0 and facing_right){
	facing_right = false;
	image_xscale = -1;
}

switch(state){
	case falling:
		scr_player_falling();
		break;
	case standing:
		scr_player_standing();
		break;
	default:
		break;
}
