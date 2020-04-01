/// configurando player
//vk quer dizer virtual keyboard
//o keyboard_check acontece enquanto segura ja o pressed acontece apenas quando aperta
var esq = keyboard_check(vk_left);			//checando se estou segurando esquerda
var dir = keyboard_check(vk_right);			//checando se estou segurando direita
var cima = keyboard_check(vk_up);			//checando se estou segurando cima
var baixo = keyboard_check(vk_down);		//checando se estou segurando baixo
var tiro = keyboard_check_pressed(vk_space);
var escudo = keyboard_check_pressed(ord("E"));
//testando o tiro tirar depois de testar

//impedindo que o player saia da tela

x= clamp(x,32,768);
y=clamp(y,32,576);



//criando escudo

if(escudo && qtd_escudo>0){
	instance_create_layer(x, y,"instances",obj_escudo);
	qtd_escudo --;
}
/* "checando": o lado que esta e aplicando velocidade (o dir-esq confere se e direita
ou esquerda, por exemplo, se for pressionado direita vai ser 1 e nao pressionar
esquerda, vai ser 0, 1-0 = 1, e o contrario vai dar -1, e se for os dois o player
nao se mexe.
*/

//------movimento horizontal------
//"checando"
var velh = (dir-esq) * vel;
//aplicando velocidade
x += velh;
//------movimento verical------
//checando
var velv = (baixo-cima) * vel;
//aplicando velocidade
y += velv;
if global.leveltiro == 1 {
	//criando o tiro
	if(tiro){
		/* invocando o tiro na posicao x e y do player, o 
		objeto criado ta na camada instances, e se chama obj_tiro01 */
		instance_create_layer(x, y, "instances", obj_tiro01);
		audio_play_sound(snd_tiroplayer,10,false);
	}
}
else if (global.leveltiro ==2) {
	//criando tiro 2
	if(tiro){
		audio_play_sound(snd_tiroplayer2,10,false);
		var t = instance_create_layer(x+23,y,"instances",obj_tiro02);
		t.hspeed = 4
		audio_play_sound(snd_tiroplayer2,10,false);
		var t = instance_create_layer(x-22,y,"instances", obj_tiro02);
		t.hspeed = -4;
	}
}
else if (global.leveltiro ==3){
	if(tiro){
		audio_play_sound(snd_tiroplayer2,10,false);
		audio_play_sound(snd_tiroplayer,10,false);
		instance_create_layer(x, y, "instances", obj_tiro01);
		var t = instance_create_layer(x+23,y,"instances",obj_tiro02);
		t.hspeed = 4
		var t = instance_create_layer(x-22,y,"instances", obj_tiro02);
		t.hspeed = -4;
	}
}
else if(global.leveltiro ==4){
	if(tiro){
		var val = 20; //definir diferença na direção
		repeat(3){
			audio_play_sound(snd_tiroplayer,10,false);
			audio_play_sound(snd_tiroplayer,10,false);
			audio_play_sound(snd_tiroplayer,10,false);
			var t = instance_create_layer(x,y,"instances",obj_tiro01);
			t.direction = 90+val;
			t.image_angle = val;
			val-=20;
		}
	}
}
else if(global.leveltiro ==5){
	if(tiro){
		audio_play_sound(snd_tiroplayer2,10,false);
		audio_play_sound(snd_tiroplayer2,10,false);
		audio_play_sound(snd_tiroplayer,10,false);
		audio_play_sound(snd_tiroplayer,10,false);
		audio_play_sound(snd_tiroplayer,10,false);
		var val = 20; //definir diferença na direção
		repeat(3){
			var t = instance_create_layer(x,y,"instances",obj_tiro01);
			t.direction = 90+val;
			t.image_angle = val;
			val-=20;
		}
		var t = instance_create_layer(x+23,y,"instances",obj_tiro02);
		t.hspeed = 4
		var t = instance_create_layer(x-22,y,"instances", obj_tiro02);
		t.hspeed = -4;
	}
}


//------sendo destruido------
if(vida<=0){
	instance_destroy();
}
