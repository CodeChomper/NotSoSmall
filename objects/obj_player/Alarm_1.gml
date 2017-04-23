/// @description You Die
if(obj_hud.player_name == ""){
	obj_hud.state = input_name;
	keyboard_string="";
}else{
	obj_hud.state = send_score;
}
room_goto_previous();