/// @description Touch player


	// Need to make a jump back animation
if(scr_being_attacked_by(obj_player)){
		my_health -= 10;
		if(!audio_is_playing(snd_kill_hit)){
			audio_play_sound(snd_kill_hit,2,false);
		}
} else {
	// Need to make a jump back animation
	obj_player.my_health -= 25; // Four frames of touching
}