draw_self();
draw_set_color(c_black);
image_blend = c_white;
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_exibir);
draw_text(x+5,y-5,texto);
draw_set_color(c_white);