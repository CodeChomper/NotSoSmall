/// @description kill tree
if(my_health <=0){
	score += 10;
	instance_destroy();
}

if(distance_to_object(obj_player) < 4 and scr_being_attacked_by(obj_player)){
	my_health -= 15;
	if(!audio_is_playing(snd_hit_tree)){
		audio_play_sound(snd_hit_tree,2,false);
	}
}

if(phy_position_y > room_height){
	instance_destroy();
}