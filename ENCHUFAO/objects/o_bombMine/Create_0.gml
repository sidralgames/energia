/// @description Insert description here
// You can write your code in this editor
image_speed = 0.2;
red2= make_colour_rgb(255,0,68);
dGreen= make_colour_rgb(62,137,72);
green= make_colour_rgb(99,199,77);
event_inherited();
depth = layer_get_depth("Player")-2;
range = 70;

scale = 1;
bnc = 1;
rangeV = 0;

_hp = 1;

_angle = image_angle;
image_index = 0;
exploding = false;
contExplo = 70;
alarm[0] = 10;

hitByLaser = false;
flashAlpha = 0;
offset = irandom(360)