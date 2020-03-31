//fazer ele rodar
image_angle+= (v*10);
//fazer y ficar equivalente ao x
image_yscale=image_xscale;
//checando se esta aumentando diminuindo
if(aumentando){
	image_xscale+=v;
}
if(diminuindo){
	image_xscale-=v;
}
//checando se chegou no limite do tamanho para inverter aumentando e diminuindo
if(image_xscale>=1.2){
	aumentando=false;
	diminuindo=true;
	v = random_range(.001,.009);
}
if(image_xscale<=0.9){
	diminuindo = false;
	aumentando = true;
	v = random_range(.001,.009);
}