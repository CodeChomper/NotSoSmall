/// @description Bear AI

if(my_health <= 0){
	// Need to make death animation
	score += 10;
	instance_destroy();
}

// Remove this!!!!
physics_apply_force(x,y,-50,0);

switch(state){
// Walk around patrol area
	case b_patrol:
		scr_bear_patrol();
		break;
// If player is near chase
	case b_attack:
		scr_bear_attack();
		break;
// If food is near try to eat
	case b_eat:
		scr_bear_eat();
		break;
	default:
		break;
}