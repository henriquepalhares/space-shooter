//explodindo
	instance_create_layer(x,y,"inimigos",obj_explosao);
if(tomei_tiro){
	scr_treme(30,noone,"inimigos");
	//ao morrer da experiencia pro obj control
	obj_control.expa+=5;
	var chance = random(100);
	if (chance > 93){
		instance_create_layer(x,y,"inimigos",obj_up);
	}
	global.totalinimigosdestruidos++;
	global.inimigosdestruidos++;
}