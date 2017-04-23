/// @description Player Picked me up
if(obj_player.my_health == 100)return;

obj_player.my_health += 10;
obj_player.my_health = obj_player.my_health > 100 ? 100 : obj_player.my_health;
audio_play_sound(snd_yum,1,false);
instance_destroy();