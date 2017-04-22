/// @description Player state controller

//Get which keys are pressed
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
jump = keyboard_check(vk_up);


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
