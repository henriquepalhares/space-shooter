var yy = (y-sprite_yoffset)+sprite_height/2;
scr_treme(100,noone,"inimigos");
var e = instance_create_layer(x,yy,"inimigos",obj_explosao);
e.image_xscale = 2;
e.image_yscale = 2;