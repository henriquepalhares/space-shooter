if(room ==rm_points){
	draw_set_font(fnt_titulo);
	draw_set_halign(fa_center);
	draw_text(room_width/2,200,"Most Incredible Score in The UNIVERSE!!");
	draw_set_halign(fa_center);
	draw_set_font(fnt_exibir);
	draw_text(room_width/2,room_height/2,"Best Score: " + string(global.maiorscore));
	draw_text(room_width/2,(room_height/2)+50,"Total Enemies Destroyed: " + string(global.totalinimigosdestruidos));
	draw_text(room_width/2,(room_height/2)+100,"Max Enemies Destroyed in One Match: " + string(global.maiorinimigosdestruidos));
	draw_set_halign(fa_left);
}