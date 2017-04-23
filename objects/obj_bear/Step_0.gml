/// @description Bear AI

if(my_health <= 0){
	// Need to make death animation
	// Blood!!!
	x_delta = looking_right ? 15 : -15;
	instance_create_layer(x,y-15,"PartSystem",obj_blood);
	
	
	score += 10;
	if(alarm_get(0) <= 0){
		alarm_set(0,15);
		state = dead;
	}
}

// One line if else statement... New in GMS2 in a lot of other languages
image_xscale = looking_right ? -1 : 1;


switch(state){
// Walk around patrol area
	case b_patrol:
		scr_bear_patrol();
		break;
	case b_falling:
		scr_bear_falling();
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

if(phy_position_y > room_height){
	instance_destroy();
}