/// @description hurt the player
obj_player.my_health -= 2;
image_index = 2;
if(obj_player.my_health <= 0){
	instance_destroy();
}