/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(batteryCreated)
{
	if (batteryCreated.inCapsule)
	{
		batteryCreated.image_angle = _angle;
		batteryCreated.x = x;
		batteryCreated.y = y;
	}
}

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

if (charge >= maxCharge)
{
	if (capsuleHaveBattery)
	{
		batteryCreated.inCapsule = false;
		batteryCreated.image_angle = _angle;
		x = x+lengthdir_x(15,_angle-90);
		y = y+lengthdir_y(15,_angle-90);
		capsuleHaveBattery = false;
		with (o_playerShip)
		{
			Unplug();
		}
		sprite_index = sprite_enchufePluged;
		image_speed = 0.2;
	}
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


if (canBeEnchufatedCont > 0)
{
	canBeEnchufatedCont --;
}
if (canBeEnchufatedCont <=0)
{
	canBeEnchufated = true;
}
//if room != Sala_Inicio
//{
//	if instance_exists(lightEnchufe)
//	{
//		lightEnchufe.light [| eLight.X] = x
//		lightEnchufe.light [| eLight.Y] = y
//	}
//}



