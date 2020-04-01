//gui = game user interface
//significa que nao afeta diretamente em nada apenas desenha na tela

draw_set_halign(fa_left);

draw_set_font(fnt_exibir)
//exibindo level atual
draw_text(20,20,"Current Level: " + string(global.level));

//exibindo exp atual
draw_text(20,40,"Exp: " + string(int64((expa))));
//exibindo quanto falta de xp prro prox level
draw_text(90,40,"| Next Level: " + string(int64(expl-expa)));
//pause menu

if(pause){
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_set_halign(fa_center);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
	draw_set_font(fnt_menu);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2,room_height/2,"Paused");
	draw_set_halign(fa_left);
	
}

