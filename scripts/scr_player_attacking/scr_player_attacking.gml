///@description player attack state
if(right or left or jump){
	state = p_falling;
	return;
}
sprite_index = spr_player_attack;