//gerando valor aleatorio de repetição com base no nivel
if (boss==false){
	if(!pause){
		var repete = random_range(1, 6) * global.level;
		//repetindo
		repeat(repete){
			randomize()
			//criando posição aleatoria de x
			var xx = random_range(32,room_width - 32);
			//criando posição aleatoria de y
			var yy = random_range(-64, -1024);
			//criando uma variavel com base no level
			var chance = random(10) * global.level;
			//checando se a variavel e maior que 25%
			if (chance>25){
			//criando inimigo 2 se sim
			var inimigo = instance_create_layer(xx,yy, "inimigos",obj_inimigo02);
			inimigo.speed = random_range(2,5);
			}
			else{
			//criando inimigo 1 se nao
			var inimigo = instance_create_layer(xx,yy,"inimigos",obj_inimigo01);
			inimigo.speed = random_range(1,4);
			}
		}
	}
		//esperando um tempo aleatorio entre 2 e 12 segundos para chamar essa função dnv
		alarm[0] = random_range(2,12)*room_speed;
}