/// @description Insert description here
// You can write your code in this editor
explo = instance_create(other.x,other.y,o_explo3)
explo.image_xscale = 0.25;
explo.image_yscale = 0.25;
_hp -= 1;
instance_destroy(other);




