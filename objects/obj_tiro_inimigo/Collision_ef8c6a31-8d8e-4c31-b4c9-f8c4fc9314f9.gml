//me destruindo
instance_destroy();

scr_treme(10,noone,"inimigos");
//player leva tiro perde vida
//other = player

with(other){//com(player) execute estes comandos
	vida--;
}
