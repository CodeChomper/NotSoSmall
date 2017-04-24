/// @description HUD Code
draw_set_font(fnt_hud);
draw_set_color(c_white);

//draw_text(500,100,"version 1.4");

switch(state){
	case show_scores:
		draw_set_font(fnt_top_scores);
		draw_text(825,70,top_scores);
		break;
	case input_name:
		//draw_set_halign(fa_left);
		draw_text(300,550,"Enter your name: " + player_name);
		break;
	case waiting:
		if(room == rm_game){
			draw_text(30,30,"Score: " + string(score));
		}
		break;
}