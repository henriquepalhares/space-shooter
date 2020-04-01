//explodindo
instance_create_layer(x,y,"inimigos",obj_explosao);
if(tomei_tiro){
	//ao morrer da experiencia pro obj control
	obj_control.expa+=2;
	var chance = random(100);

	if (chance > 98){
		instance_create_layer(x,y,"inimigos",obj_up);
	}
	global.totalinimigosdestruidos++;
	global.inimigosdestruidos++;
}