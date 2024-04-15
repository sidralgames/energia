/// @description Insert description here
// You can write your code in this editor


xConnectionPos = x;
yConnectionPos = y;

if !tile_meeting(x,y,"Tiles")
{
	free = true;
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

if (alarm[3] <= 0)
{
	image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
	_angle = image_angle;
}

//if (room = Sala_0) 
//{
//	if (isOpen)
//	{
//		abierto = true;	
//	}
//}


if (free) && (image_index < 9)
{
	image_speed = 0.5;
}
else
{
	image_speed = 0;
}

if (free) && (image_index >= 9)
{
	image_speed = 0;
}

if (o_enchufe_Final.abierto = true)
{
	sprite_index = spriteUnlocked;	
}

if (sprite_index = spriteUnlocked) && (global.haveChargerAdapter)
{
	abierto = true;	
}
else
{
	abierto = false;	
}

if instance_exists(o_playerShip)
{
	if o_playerShip.plugged = true && (o_playerShip.pluggedFinal = true) && (enchufeActive)
	{
		if (cont = false)
		{
			if (o_playerShip.bumpsAchievement = true) && (global.achNoBump = 0) && (room  = Sala_0)
			{
				global.achNoBump = 1;
			}
			
			if instance_exists(o_chipFather)
			{
				o_chipFather._hp = 10;
			}
			
			cont = true;
			global.goToSecretRoom = true;
			alarm[0] = 60;
		}
	}
}

