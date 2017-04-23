/// @description HUD Code
draw_set_font(fnt_hud);

switch(state){
	case show_scores:
		draw_text(25,25,top_scores);
		break;
	case input_name:
		draw_set_halign(fa_left);
		draw_text(100,200,"Enter your name: " + player_name);
		if(keyboard_check_released(vk_anykey)){
			if(string_length(keyboard_string) <= 5){
				player_name = string_upper(keyboard_string);
			}
			if(keyboard_lastkey == vk_backspace){
				var len = string_length(player_name);
				string_delete(player_name, len, 1);
			}
			if(keyboard_lastkey == vk_enter){
				state = send_score;
			}
		}
		break;
}