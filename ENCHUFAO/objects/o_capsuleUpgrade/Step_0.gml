/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

xConnectionPos = x;
yConnectionPos = y;

if (scale < 1)
{
	scale+=0.1
}

if instance_exists(upgradeChosen.obj)
{
	upgradeChosen.obj.x = x;
	upgradeChosen.obj.y = y;
}


if (alarm[2] <=0)
{
	if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
	{
	    _hpush = -_hpush*bnc;
	}
	if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
	{
	    _vpush = -_vpush*bnc;
	}
}

Move();

image_angle += max(0.1*sign(_hpush), 2*(abs(_hpush)),0.1*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;

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


if (canBeEnchufatedCont > 0)
{
	canBeEnchufatedCont --;
}
if (canBeEnchufatedCont <=0)
{
	canBeEnchufated = true;
}

if (_hp > (_hpMax/2 + _hpMax/3))
{
	image_index = 0;
}
else if (_hp > (_hpMax/3)) && (_hp <=(_hpMax/2 + _hpMax/3))
{
	image_index = 1;
}
else
{
	image_index = 2;
}

