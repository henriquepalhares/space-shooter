image_index--;

if (image_index<0){
	instance_destroy();
}
else{ 
	alarm[0] = room_speed*1;
}
if (image_index=0){
	audio_play_sound(snd_shielddown,11,false);
}