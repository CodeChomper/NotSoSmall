/// @description turn music on or off
music_playing = !music_playing;
image_index = image_index + 1 % image_number; // loop
timeline_running = music_playing;
timeline_position = 0;

if(!music_playing){
	audio_stop_all();
}
