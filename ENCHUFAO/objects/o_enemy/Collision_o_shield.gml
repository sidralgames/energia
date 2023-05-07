/// @description Insert description here
// You can write your code in this editor

instance_destroy();
explo = instance_create(x,y,o_explo2)

explo.image_xscale = 0.5;
explo.image_yscale = 0.5;

global.shields-=1;
global.XPpoints +=30;



