/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x+_hpush*1.2,y,o_enchufeStandard_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.2,o_enchufeStandard_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

_angle += _hpush*2;

if (charge >= 200)
{
	sprite_index = sprite_enchufePluged;
	image_speed = 0.2;
}

if (enchufeOvercharged)
{
	part_particles_create(global.overCharged_sys, x+random_range(-25,25), y+random_range(-25,25), global.overChargedPart , 2)	
	
	contOvercharged -= 0.75;
	if (contOvercharged <= 0)
	{
		enchufeOvercharged = false;
	}
}

_hpush = clamp(_hpush, -1.5, 1.5)
_vpush = clamp(_vpush, -1.5, 1.5)

