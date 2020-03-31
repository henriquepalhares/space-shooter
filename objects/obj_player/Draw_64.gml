var n = 1;
var n_escudo = 1;
repeat(vida){
	draw_sprite_ext(sprite_index, image_index, 30*n, room_height-30, .3,.3, image_angle, c_white, .7);
	n++;
}
repeat(qtd_escudo){
	draw_sprite_ext(obj_escudo,0,room_width-(45*n_escudo),room_height-30,.3,.3,image_angle,c_white,.7);
	n_escudo++;
}
