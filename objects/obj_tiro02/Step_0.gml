//independentemente do que fizer ainda herda elementos do obj pai
event_inherited();
//aqui começa novos comandos
 // xinicial == xstart
if (x != clamp(x, xstart-30, xstart+30)){ //checar se o valor ta dentro do minimo e maximo
	hspeed *= -1;
}
