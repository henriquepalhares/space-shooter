/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(y+96 < obj_player.y){
		instance_create_layer(x,y,"inimigos",obj_tiro02_inimigo);
	}
}
alarm[0] = room_speed*random_range(2,5);