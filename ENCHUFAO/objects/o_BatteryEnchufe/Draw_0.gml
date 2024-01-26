/// @description Insert description here
// You can write your code in this editor

x = enchufe.x;
y = enchufe.y;


var _c = dcos(enchufe.image_angle);
var _s = dsin(enchufe.image_angle);

var _x = x - xoffset * _c - yoffset * _s;
var _y = y - xoffset * -_s - yoffset * _c;
draw_sprite_ext(_sprite, image_index, _x,_y,1, image_yscale, enchufe.image_angle+off_angle, image_blend, image_alpha)







