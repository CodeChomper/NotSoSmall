/// @description hud step event
switch(state){
	case waiting:
		break;
	case input_name:
		if(keyboard_check_released(vk_anykey)){
			show_debug_message("key pressed: " + player_name);
			if(string_length(keyboard_string) <= 10){
				player_name = string_upper(keyboard_string);
			}
			if(keyboard_lastkey == vk_backspace){
				var len = string_length(player_name);
				string_delete(player_name, len, 1);
			}
			if(keyboard_lastkey == vk_enter and player_name != ""){
				state = send_score;
			}
		}
		break;
	case send_score:
		state = waiting;
		player_score = score;
		
		var s = string_format(player_score, 7, 0);
		var s6 = string_char_at(s, 1);
		var s5 = string_char_at(s, 2);
		var s4 = string_char_at(s, 3);
		var s3 = string_char_at(s, 4);
		var s2 = string_char_at(s, 5);
		var s1 = string_char_at(s, 6);
		var s0 = string_char_at(s, 7);	
		
		var str = "";
		str += s6 == "" ? keys[6,0] : keys[6, int64(s6)];
		str += s5 == "" ? keys[5,0] : keys[5, int64(s5)];
		str += s4 == "" ? keys[4,0] : keys[4, int64(s4)];
		str += s3 == "" ? keys[3,0] : keys[3, int64(s3)];
		str += s2 == "" ? keys[2,0] : keys[2, int64(s2)];
		str += s1 == "" ? keys[1,0] : keys[1, int64(s1)];
		str += s0 == "" ? keys[0,0] : keys[0, int64(s0)];

		post = http_post_string(url_base + "hs_insert.php?Name=" + player_name + "&Game=NotSoSmall&Score=" + string(str),"");
		break;
	case get_scores:
		state = waiting;
		get = http_get(url_base + "hs_get.php?Game=NotSoSmall&HowMany=20");
		break;
}


// Delete these after debug;
if(state = waiting and keyboard_check(ord("I"))){
	state = input_name;
	keyboard_string = "";
}

if(state = waiting and keyboard_check(ord("G"))){
	state = get_scores;
}

if(state = show_scores and keyboard_check(vk_escape)){
	state = waiting;
}