/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)



for ( i=0; i<capsulesMax; i++)
{
	capsule[i].x = x+ lengthdir_x(capsule[i].dist, capsule[i].capsuleAngle);
	capsule[i].y = y+ lengthdir_y(capsule[i].dist, capsule[i].capsuleAngle);
	capsule[i].image_angle += _hpush*2*global.relativeSpeed;
}
	
		
		if (charge >= maxCharge)
		{
			charge = 0;
			capsuleCreated = instance_create_layer(x+lengthdir_x(70, image_angle+270),y+lengthdir_y(70, image_angle+270),"Enchufes", o_capsule)
			capsuleCreated._vpush = _vpush*1.5;
			capsuleCreated._hpush = _hpush*1.5;
			capsuleCreated.depth = depth-1;
				
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

image_angle += _hpush*1.2*global.relativeSpeed;


if (enchufeOvercharged)
{
	part_particles_create(global.overCharged_sys, x+random_range(-30,30), y+random_range(-30,30), global.overChargedPart , 3)	
	
	contOvercharged -= 0.75;
	if (contOvercharged <= 0)
	{
		enchufeOvercharged = false;
	}
}

_hpush = clamp(_hpush, -1, 1)
_vpush = clamp(_vpush, -1, 1)


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

if (_hp <= 0) && (capsuleHaveSomething)
{
	for ( i=0; i<capsulesMax; i++)
	{
		instance_destroy(capsule[i])
		
	}
	
	if (o_playerShip.plugged) && (charging)
	{
		with (o_playerShip)
		{
			Unplug();
		}
	}
	instance_destroy();
	instance_create(x,y,o_explo2);
}