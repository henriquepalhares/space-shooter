/// configurando inimigo

//vendo se estou na tela

if(y>=0 && natela==false){
	alarm[0]=room_speed*random_range(0.5, 2);
	natela = true;
}

if(y > room_height+100){
	instance_destroy();
}
