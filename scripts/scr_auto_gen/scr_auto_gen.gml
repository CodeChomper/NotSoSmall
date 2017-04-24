///@description auto gen the stuff for the land
var make_enemy = irandom_range(0,100);

var make_tree = irandom_range(0,10);
var how_many_trees = irandom_range(1,3);
var how_many_enemies = irandom_range(1,3);
var food = irandom_range(0,5);

if(image_index <= 3){ // Mountains
	var x_delta = random_range(32,sprite_width-32);
	if(food >= 2 and obj_player.my_health < 100){ // 3/5th chance
		instance_create_layer(x + x_delta, y - 70,"Pickups",obj_waffles);
	}
}
if(image_index > 3){ // Desert
	var x_delta = random_range(32,sprite_width-32);
	if(food >= 2 and obj_player.my_health < 100){ // 3/5th chance
		instance_create_layer(x + x_delta, y - 70,"Pickups",obj_bacon);
	}
}

if(make_enemy > 50 and (land_left !=noone or land_right != noone) ){
	for(var i=0; i<how_many_enemies; i++){
		x_delta = random_range(32,sprite_width-32);
		var type = image_index <= 3 ? obj_bear : (image_index > 5 ? obj_snow_man : obj_scorpion);
		instance_create_layer(x + x_delta, y - 30,"BadGuys",type);
	}
}

if(make_tree > 3){
	
	var x_delta = random_range(32,sprite_width-32);
	
	for(var i=0; i< how_many_trees; i++){
		x_delta = random_range(32,sprite_width-32);
		var tmp_tree = instance_create_layer(x + x_delta, y - 10,"Trees",obj_tree);
		var tree_img = 0;
		if(image_index < 3){ // Mountains
			tree_img = irandom_range(0,1);
		} else if(image_index > 3 and image_index < 6){ // Desert
			tree_img = irandom_range(2,3);
		} else {
			tree_img = 4;
		}
		tmp_tree.image_index = tree_img;
	}
}
