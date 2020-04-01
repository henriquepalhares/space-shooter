if(sumindo){
	alpha-=0.04;
}
else{
	alpha+=0.04;
}
if(alpha>=1){
	sumindo = true;
	room_goto(destino);
}
if(alpha<=0 && novaroom = true){
	instance_destroy();
}