/// @description Player state controller

//Get which keys are pressed
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
jump = keyboard_check(vk_up);
attack = keyboard_check(vk_space);

if(my_health <= 0){
	// Need to make death animation
	part_particles_create(global.ps,x,y-20,global.pt_blood,50);
	if(alarm_get(1)<= 0) alarm_set(1,30);
}


//handle direction switching
if(!facing_right and right){
	facing_right = true;
	image_xscale = 1;
}
if(facing_right and left){
	facing_right = false;
	image_xscale = -1;
}

switch(state){
	case p_falling:
		scr_player_falling();
		break;
	case p_standing:
		scr_player_standing();
		break;
	case attacking:
		scr_player_attacking();
	default:
		break;
}
