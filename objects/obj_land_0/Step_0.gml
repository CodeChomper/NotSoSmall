/// @description Add land
if(close){
	
	
	if(ceil(phy_rotation) == 180){
		//if(land_right != noone)land_right.land_left = noone;
		instance_destroy();
	}
	phy_rotation += 2;
	return;
	
}

// Add land to the right
if(obj_player.x > x+334 and !land_right and locked){
	land_right = instance_create_layer(x+384,y,"Land",obj_land_0);
	land_right.phy_rotation = -180;
	land_right.locked = false;
	land_right.land_left = self;
	if(land_left != noone){
		land_left.close = true; 
		land_left = noone;
	}
}

// Add land to the left
if(obj_player.x < x + 50 and land_left == noone){
	if(land_right != noone){
		land_right.close = true;
		land_right = noone;
	}
	land_left = instance_create_layer(x - 384, y, "Land", obj_land_0);
	land_left.phy_rotation = -180;
	land_left.locked = false;
	land_left.land_right = self;
}

 

if(!locked){
	if(!playing_lock_sound){
		playing_lock_sound = true;
		audio_play_sound(sound_1,1,false);
	}
	phy_rotation -= 2;
	if(floor(phy_rotation) == -360 or floor(phy_rotation) < -363){
		locked = true;
		phy_rotation=0;
	}
}