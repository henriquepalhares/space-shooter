// destruindo instance_destroy(quem colidiu comigo);
with(other){
	tomei_tiro = true;
}
instance_destroy();      //destruindo o tiro
instance_destroy(other); //falando com quem ta colidindo, SO FUNCIONA NO EVENDO DE COLISAO
