/// @description init land
land_left = noone;
land_right = noone;
locked = true;
close = false;
playing_lock_sound = false;
auto_gen = true;
image_speed = 0.0;

// Pick a random land image from the sprite
image_index = irandom_range(0,image_number - 1);
