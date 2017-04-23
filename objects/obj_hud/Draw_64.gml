/// @description HUD Code
draw_set_font(fnt_hud);

switch(state){
	case show_scores:
		draw_text(25,25,top_scores);
		break;
	case input_name:
		//draw_set_halign(fa_left);
		draw_text(100,200,"Enter your name: " + player_name);
		break;
}