/// @description Add land
if(close){
	phy_rotation += 2;
	show_debug_message(string(phy_rotation));
	if(ceil(phy_rotation) == 180){
		instance_destroy(self);
	}
}

if(obj_player.x > x+334 and !land_right and locked){
	land_right = instance_create_layer(x+384,y,"Land",obj_land_0);
	land_right.phy_rotation = -180;
	land_right.locked = false;
	land_right.land_left = self;
	if(land_left != noone){
		land_left.close = true;
	}
}

 

if(!locked){
	if(!audio_is_playing(sound_1)){
		audio_play_sound(sound_1,1,false);
	}
	phy_rotation -= 2;
	if(floor(phy_rotation) == -360){
		locked = true;
		phy_rotation=0;
	}
}