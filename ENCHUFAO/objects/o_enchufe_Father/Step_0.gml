/// @description Insert description here
// You can write your code in this editor

Move();

_angle += _hpush*2;

if (charge >= 200)
{
	part_particles_create(global.enchufe_sys, x+random_range(-18,18), y+random_range(-18,18), global.enchufePart , 10)
}

if (enchufeOvercharged)
{
	part_particles_create(global.overCharged_sys, x+random_range(-18,18), y+random_range(-18,18), global.overChargedPart , 1)	
	
	contOvercharged -= 0.5;
	if (contOvercharged = 0)
	{
		enchufeOvercharged = false;
	}
}


