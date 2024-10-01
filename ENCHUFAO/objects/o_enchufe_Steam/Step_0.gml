/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
xConnectionPos = x;
yConnectionPos = y;

if (image_index >= 10) && abierto = false
{
	abierto = true;
	image_speed = 0;
}


if (enchufeActive && abierto)
{
	if (image_index <=39)
	{
		
		image_speed = 0.6;
	}
	else
	{
		
		image_speed = 0;
	}
}

if (!enchufeActive && abierto)
{
	if (image_index >=12)
	{
		
		image_speed = -0.6;
	}
	else
	{
		
		image_speed = 0;
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

//_angle += spinDir * max(0.05, (abs(_hpush) + abs(_vpush)))*global.relativeSpeed;


if (charge >= 200)
{
	sprite_index = sprite_enchufePluged;
	//image_speed = 0.2;
	
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

_hpush = clamp(_hpush, -2.0, 2.0)
_vpush = clamp(_vpush, -2.0, 2.0)

_hpush = lerp(_hpush, 0, 0.004)
_vpush = lerp(_vpush, 0, 0.004)


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


if (charge >= 200) && (soundActive == false)
{
	soundActive = true;
	audio_play_sound_on(global.audioEmitter, snd_EnchufeActive, false, 50)
}

if (isMainEnchufe) && (enchufeActive) && (global.chargerShoots)
{
	if instance_exists(o_playerShip)
	{
		Controls_Input();
		
		if (key_shoot)
		{
			if (o_playerShip.alarm[0] <= 0) && (global.ammo >1 )
			{
				if (o_playerShip.plugged) 
				{
					SocketShoot();
				}
			}
		}
	}
}

if (enchufeActive)
{
	 _angle = lerp(_angle, 360, 0.05)
}
else
{
	_angle += spinDir * max(0.02, (abs(_hpush/2) + abs(_vpush/2)))*global.relativeSpeed;
}
 
