/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

_angle += _hpush*2*global.relativeSpeed;

if (charge >= 200)
{
	sprite_index = sprite_enchufePluged;
	image_speed = 0.2;
	
	//if room != Sala_Inicio
	//{
	//	lightEnchufe.full = true;
	//}
}

if (enchufeOvercharged)
{
	part_particles_create(global.overCharged_sys, x+random_range(-30,30), y+random_range(-30,30), global.overChargedPart , 3)	
	
	contOvercharged -= 0.75;
	if (contOvercharged <= 0)
	{
		enchufeOvercharged = false;
	}
}

_hpush = clamp(_hpush, -1.5, 1.5)
_vpush = clamp(_vpush, -1.5, 1.5)

//if room != Sala_Inicio
//{
//	if instance_exists(lightEnchufe)
//	{
//		lightEnchufe.light [| eLight.X] = x
//		lightEnchufe.light [| eLight.Y] = y
//	}
//}