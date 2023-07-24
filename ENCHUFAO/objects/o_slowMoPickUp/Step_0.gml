/// @description Insert description here
// You can write your code in this editor

_hpush = lerp(_hpush, 0, 0.05);
_vpush = lerp(_vpush, 0, 0.05);

image_angle += max(0.5*sign(_hpush), 5*(abs(_hpush)),0.5*sign(_vpush), 5*(abs(_vpush)));

MoveZeroGrv();


if instance_exists(o_playerShip)
{
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) <= 30)
	{
		direction = point_direction(x,y, o_playerShip.x, o_playerShip.y)
		speed = 4;
	}
	
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) <= 5)
	{
		if (global.slowMoTime < (global.slowMoTimeMax - 5))
		{
			global.slowMoTime +=5;
			o_main.alarm[1] = 90;
		}
		global.XPpoints+=1;
		instance_destroy();
	}
}



hp --;

if (hp <= 100)
{
	if (alarm[0] <= 2)
	{
		image_alpha = 0.2;
	}
	else
	{
		image_alpha = 1;
	}
	
	if (alarm[0] <= 0)
	{
		alarm[0] = 5;
	}
}
if (hp <= 0)
{
	instance_destroy();	
}


