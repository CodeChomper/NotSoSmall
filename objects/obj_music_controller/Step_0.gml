/// @description Control the music

if(room == rm_menu){
	if(!audio_is_playing(snd_intro) and !audio_is_playing(snd_intro_head)){
		intro_riff = audio_play_sound(snd_intro,1,false);
	}
}

if(room == rm_game){
	if(!audio_is_playing(snd_intro) and !audio_is_playing(snd_intro_head)){
		intro_riff = audio_play_sound(snd_intro_head,1,false);
	}
}