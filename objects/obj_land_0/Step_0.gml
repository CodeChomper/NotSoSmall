/// @description Add land
if(obj_player.x > x+334){
	tmp = instance_create_layer(x+384,y,"Land",obj_land_0);
	tmp.phy_rotation = -180;
}

if(phy_rotation != 0){
	phy_rotation += 1;
}