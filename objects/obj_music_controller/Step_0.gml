/// @description Control the music

timeline_running = music_playing;
if(music_playing){
	if(room == rm_menu){
		timeline_index = tml_intro_song;
	}else{
		timeline_index = tml_control_song;
	}



	//if(room == rm_menu){
	//	if(!audio_is_playing(snd_intro) and !audio_is_playing(snd_intro_head)
	//		and !audio_is_playing(snd_bridge)){
	//		intro_riff = audio_play_sound(snd_intro,1,false);
	//	}
	//}

	//if(room == rm_game){
	//	if(!audio_is_playing(snd_intro) and !audio_is_playing(snd_intro_head)
	//		and !audio_is_playing(snd_bridge)){
	//		show_debug_message("play head left " + string(play_head_count));
	//		if(play_head_count <= 0){
	//			bridge = audio_play_sound(snd_bridge,1,false);
	//			play_head_count = 3;
	//			return;
	//		}
		
	//		play_head_count--;
		
	//		intro_head = audio_play_sound(snd_intro_head,1,false);
		
	//	}
	//}
}