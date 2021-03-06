/// @description Player state controller

//Get which keys are pressed
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
jump = keyboard_check(vk_up);
attack = keyboard_check(vk_space);

if(my_health > 100) my_health = 100;

if(my_health <= 0 and obj_hud.state == waiting){
	// Need to make death animation
	instance_create_layer(x,y-20,"PartSystem",obj_blood);
	if(alarm_get(1)<= 0) alarm_set(1,20);
	if(!audio_is_playing(snd__player_death)){
		audio_play_sound(snd__player_death,1,false);
	}
	
	return;
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
