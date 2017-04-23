/// @description handle the attack animation
event_inherited();

if(state == b_attack){
	sprite_index = spr_scorpion_attack;
} else {
	sprite_index = spr_scorpion_walk;
}