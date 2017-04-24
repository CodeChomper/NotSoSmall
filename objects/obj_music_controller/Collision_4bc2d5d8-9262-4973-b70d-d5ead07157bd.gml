/// @description turn music on or off
music_playing = !music_playing;
image_index = image_index + 1 % image_number; // loop

if(!music_playing){
	audio_stop_all();
}