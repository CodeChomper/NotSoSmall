/// @description Bear AI

switch(state){
// Walk around patrol area
	case patrol:
		scr_bear_patrol();
		break;
// If player is near chase
	case attack:
		scr_bear_attack();
		break;
// If food is near try to eat
	case eat:
		scr_bear_eat();
		break;
	default:
		break;
}