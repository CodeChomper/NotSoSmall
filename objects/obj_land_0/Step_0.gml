/// @description Add land
if(obj_player.x > x+334 and !land_right){
	land_right = true;
	tmp = instance_create_layer(x+384,y,"Land",obj_land_0);
	tmp.phy_rotation = -180;
	tmp.locked = false;
}

if(!locked){
	phy_rotation = phy_rotation - 2;
	if(floor(phy_rotation) == -360){
		locked = true;
		phy_rotation=0;
	}
	show_debug_message(string(phy_rotation));
}