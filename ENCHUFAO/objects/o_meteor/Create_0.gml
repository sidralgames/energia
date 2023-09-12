/// @description Insert description here
// You can write your code in this editor
explo = instance_create(x,y,o_explo3)
scale1 = random_range(0.2, 0.4)
explo.image_xscale = scale1;
explo.image_yscale = scale1;

scale = random_range(0.7, 1.15)
image_speed = 0;
image_index=irandom(2);
hp = choose(1,2,3);
hsp_final = 0
hsp_f = 0
vsp_final = 0
vsp_f = 0

_hpush = random_range(1.5,-1.5)
_vpush = random_range(1.5,-1.5)
bnc = 0.8;
_angle = 0;

if tile_meeting(x,y,"Tiles")
{
	instance_destroy();
}
