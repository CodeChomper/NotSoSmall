///@description player attack state
if(right or left or jump){
	state = p_standing;
	return;
}
if(alarm_get(0) <= 0) alarm_set(0,30);
sprite_index = spr_player_attack;