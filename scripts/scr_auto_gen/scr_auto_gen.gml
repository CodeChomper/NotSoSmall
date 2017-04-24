///@description auto gen the stuff for the land
var make_enemy = irandom_range(0,100);

var make_tree = irandom_range(0,10);
var how_many_trees = irandom_range(1,3);
var how_many_enemies = irandom_range(1,3);
var food = irandom_range(0,5);

var f = image_index;

if(f <= 3){ // Mountains
	var x_delta = random_range(32,sprite_width-32);
	if(food >= 2 and obj_player.my_health < 100){ // 3/5th chance
		instance_create_layer(x + x_delta, y - 70,"Pickups",obj_waffles);
	}
}
if(f > 3){ // Desert
	var x_delta = random_range(32,sprite_width-32);
	if(food >= 2 and obj_player.my_health < 100){ // 3/5th chance
		instance_create_layer(x + x_delta, y - 70,"Pickups",obj_bacon);
	}
}

if(make_enemy > 50 and (land_left !=noone or land_right != noone) ){
	for(var i=0; i<how_many_enemies; i++){
		x_delta = random_range(32,sprite_width-32);
		
		var type = noone;
		// I should put this in a function... if I had time!!!
		if(f <= 3){ // Mountians
			type = obj_bear;
		} else if(f > 3 and f < 6){ // desert
			type = obj_scorpion;
		} else if(f > 5 and f < 8){ // snow
			type = obj_snow_man;
		} else { // farm
			type = obj_brown_cow;
		}
		
		//var type = f <= 3 ? obj_bear : (f > 5 ? obj_snow_man : obj_scorpion);
		instance_create_layer(x + x_delta, y - 30,"BadGuys",type);
	}
}

if(make_tree > 3 and (land_left !=noone or land_right != noone)){
	
	var x_delta = random_range(32,sprite_width-32);
	
	for(var i=0; i< how_many_trees; i++){
		x_delta = random_range(32,sprite_width-32);
		var tmp_tree = instance_create_layer(x + x_delta, y - 10,"Trees",obj_tree);
		var tree_img = 0;
		if(f <= 3){ // Mountians
			show_debug_message("I am at the mountians");
			tree_img = irandom_range(0,1);
		} else if(f > 3 and f < 6){ // desert
			show_debug_message("I am at the desert");
			tree_img = irandom_range(2,3);
		} else if(f > 5 and f != 8){ // snow
			show_debug_message("I am at the snow");
			tree_img = 4;
		} else { // farm
			show_debug_message("I am at the farm");
			tree_img = 5;
		}
		
		//if(f < 3){ // Mountains
		//	tree_img = irandom_range(0,1);
		//} else if(f > 3 and f < 6){ // Desert
		//	tree_img = irandom_range(2,3);
		//} else {
		//	tree_img = 4;
		//}
		tmp_tree.image_index = tree_img;
	}
}
