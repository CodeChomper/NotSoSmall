/// @description Init bird AI

image_xscale = facing_right ? 1 : -1;

if(distance_to_object(obj_player) > 350){
	facing_right = x > obj_player.x ? false : true;
	x_spd = facing_right ? 5 : -5; 
}

// Shit on player
if(distance_to_object(obj_player) < 180 and !instance_exists(obj_bird_shit)){
	tmp_shit = instance_create_layer(x,y,"Player",obj_bird_shit);
	tmp_shit.phy_speed_x = x_spd;
}


x += x_spd;

