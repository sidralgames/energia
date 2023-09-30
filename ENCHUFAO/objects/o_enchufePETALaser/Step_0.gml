/// @description Insert description here
// You can write your code in this editor
if (charge < 300)
{
	if (image_index >= 18)
	{
		image_index = 16	
	}
}

if (place_meeting(x+_hpush*1.2,y,o_enchufeStandard_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.2,o_enchufeStandard_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

_angle += _hpush*2*global.relativeSpeed;

if (charge >= 295)
{
	image_speed = -imageSpeed*1.5;
	
	if (playerUnplugged == false)
	{
		UnplugPETA();
		playerUnplugged = true;
	}
	
	if (image_index <=1)
	{
		instance_destroy();	
	}
}

if (dying == true)
{
	image_speed = -imageSpeed*1.5;
	if (image_index <=1)
	{
		instance_destroy();	
	}
	
}
if alarm[2] > 0
{
	_hpush = lerp(_hpush, 0, 0.01);
	_vpush = lerp(_vpush, 0, 0.01);
}
//if (enchufeOvercharged)
//{
//	part_particles_create(global.overCharged_sys, x+random_range(-25,25), y+random_range(-25,25), global.overChargedPart , 2)	
	
//	contOvercharged -= 0.75;
//	if (contOvercharged <= 0)
//	{
//		enchufeOvercharged = false;
//	}
//}

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




