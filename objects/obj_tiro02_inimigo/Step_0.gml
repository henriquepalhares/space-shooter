//destruindo o tiro do inimigo quando sai da tela
if (y > room_height + 100 or y<-100){
	instance_destroy();
}
if(x> room_width + 100 or x<-100){
	instance_destroy();
}
