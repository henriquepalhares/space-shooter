draw_self();//me desenhando pois quando uso draw eu desenho por cima do sprite
gpu_set_blendmode(bm_add);

draw_sprite_ext(sprite_index, image_index, x, y,image_xscale+0.1, image_yscale+0.1, image_angle,cor, image_alpha);

gpu_set_blendmode(bm_normal);