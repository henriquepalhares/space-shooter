/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_tiroplayer2,2,false);
speed = 4;
if(instance_exists(obj_player)){//se o player existe
	direction = point_direction(x,y,obj_player.x,obj_player.y);		//direcao do player
				//ela pede 4 argumentos =
				//(posicao do obj atual x, posicao do obj atual y, posicao do alvo x, posicao do alvo y)
	image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}
else {
	direction = 270;
	image_angle = 180
}
