/// configurando inimigo

//vendo se estou na tela

if(y>=0 && natela==false){
	alarm[0]=room_speed*random_range(0.5, 2);
	natela = true;
}
if(natela == true){//esta na tela?
	if(y>room_height/3 && movendo == false){//ja passou de 1/3 da tela
		if(x>room_width/2){ //esta na direita
			hspeed = -4;
			movendo = true;
		}
		else{
			hspeed = 4;
			movendo = true;
		}
	}
}
if(y > room_height+100){
	instance_destroy();
}

