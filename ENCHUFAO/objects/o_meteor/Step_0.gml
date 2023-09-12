/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x+_hpush,y,o_meteor))
{
    _hpush = -_hpush*bnc;
	explo = instance_create(x,y,o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	hp -=1;

}

if (place_meeting(x,y+_vpush,o_meteor))
{
    _vpush = -_vpush*bnc;
	explo = instance_create(x,y,o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	hp -=1;
	
}
if (tile_meeting(x+_hpush*1.25,y,"Tiles"))
{
    _hpush = -_hpush*bnc;
	explo = instance_create(x,y,o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	hp -=1;
}
if (tile_meeting(x,y+_vpush*1.25,"Tiles"))
{
    _vpush = -_vpush*bnc;
	explo = instance_create(x,y,o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	hp -=1;
}

x+=_hpush * global.relativeSpeed;
y+=_vpush * global.relativeSpeed;

_hpush = lerp(_hpush, 0 , 0.001);
_vpush = lerp(_vpush, 0 , 0.001);

_angle += _hpush*3;

if (hp <= 0)
{
	instance_destroy();
}