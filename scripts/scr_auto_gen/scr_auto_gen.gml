///@description auto gen the stuff for the land

if(image_index == 0){ // Mountains 
	var make_bear = irandom_range(0,100);
	var make_tree = irandom_range(0,10);
	var how_many_trees = irandom_range(1,5);
	var how_many_bears = irandom_range(1,3);
	if(land_left == noone and land_right == noone){
		return;
	}
	
	if(make_bear > 50){
		
		for(var i=0; i<how_many_bears; i++){
			var x_delta = random_range(32,sprite_width-32);
			instance_create_layer(x + x_delta, y - 30,"Player",obj_bear);
		}
	}
	if(make_tree > 3){
		for(var i=0; i< how_many_trees; i++){
			var x_delta = random_range(32,sprite_width-32);
			instance_create_layer(x + x_delta, y - 10,"Player",obj_tree);
		}
	}
	

}