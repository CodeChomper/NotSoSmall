/// @description Bear AI

if(my_health <= 0){
	// Need to make death animation
	// Blood!!!
	x_delta = looking_right ? 15 : -15;
	part_particles_create(global.ps,x + x_delta,y-10,global.pt_blood,50);
	
	
	score += 10;
	instance_destroy();
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