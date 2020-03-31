//checando se o xp atual e maior ou igual ao xp por level


//subindo de level
if(expa >=expl){
	//se for o level aumenta 1
	global.level++;
	//a quantidade de xp pro prox level duplica
	expl*= 1.8;
}
//checando se o boss existe pra cria-lo
if(global.level>=5 && boss == false){ //se o level for maior que 5 e não tiver nenhum boss
	instance_create_layer(room_width/2,y-700,"inimigos",obj_boss);
	instance_destroy(obj_inimigo01);
	instance_destroy(obj_inimigo02);
	boss=true;
	audio_stop_all();
}
//checando a pontuação mais alta
if(expa>global.maiorscore){
	global.maiorscore = expa;
}
/*if(keyboard_check_pressed(ord("P"))){
	if(!pause){
		pause=true;
		instance_deactivate_all(true);
	}
	else{
		pause=false;
		instance_activate_all();
	}
}
*/