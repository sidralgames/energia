/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
CheckInScreen(50, 60);

xConnectionPos = x+lengthdir_x(25,image_angle-90);
yConnectionPos = y+lengthdir_y(25,image_angle-90);

	
if (charge >= maxCharge) && (capsulesMax >=1)
&& (!tile_meeting(x+lengthdir_x(45, image_angle+270),y+lengthdir_y(45, image_angle+270),"Tiles"))
&& (!place_meeting(x+lengthdir_x(45, image_angle+270),y+lengthdir_y(45, image_angle+270),o_enchufe_Father))
{
	charge = 0;
	alarm[2] = 10;
	
	odds = irandom(10);
	if (odds <= 9)
	{
		capsuleToCreate = o_capsule;
	}
	else
	{
		capsuleToCreate = o_capsule_Mimic;
	}
	
	capsuleCreated = instance_create_layer(x+lengthdir_x(45, image_angle+270),y+lengthdir_y(45, image_angle+270),"Enchufes", capsuleToCreate)
	capsuleCreated._vpush = lengthdir_y(1.2, image_angle+random_range(250,290));
	capsuleCreated._hpush = lengthdir_x(1.2, image_angle+random_range(250,290));
	capsuleCreated.alarm[2] = 10;
	_vpush = lengthdir_y(0.25, image_angle+90);
	_hpush = lengthdir_x(0.25, image_angle+90);
	capsuleCreated.scale = 0;
	capsuleCreated.image_angle = irandom(359)
	capsuleCreated.depth = depth-1;
	instance_destroy(capsule[capsulesMax-1])
	capsulesMax -=1;
}

if instance_exists(o_playerShip)
{
	if (capsulesMax <= 0)
	{
		capsuleHaveSomething = false;
		if (o_playerShip.plugged) && (charging)
		{
			with (o_playerShip)
			{
				Unplug();
			}
		}
		instance_destroy();
	}
}
for ( i=0; i<capsulesMax; i++)
{
	if instance_exists(capsule[i])
	{
		capsule[i].x = x+ lengthdir_x(capsule[i].dist, capsule[i].capsuleAngle);
		capsule[i].y = y+ lengthdir_y(capsule[i].dist, capsule[i].capsuleAngle);
		capsule[i].image_angle += _hpush*2*global.relativeSpeed;
	}
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

image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
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

_hpush = clamp(_hpush, -0.5, 0.5)
_vpush = clamp(_vpush, -0.5, 0.5)


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
	instance_create(x,y,o_exploPurple);
}