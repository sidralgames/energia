/// @description Insert description here
// You can write your code in this editor
if (scale < 1)
{
	scale +=0.1;
}

_hp --;

if (spriteSet = false)
{
	if (_sprite = -1)
	{
		_sprite = choose(s_chipMimic, s_temporary_fireRate, s_temporary_superShot, s_temporary_laser, s_temporary_Smart, s_temporary_Repair)
	}
	spriteSet = true;
}
sprite_index = _sprite;

if (_hp <= 100)
{
	if (alarm[11] <= 2)
	{
		image_alpha = 0.3;
	}
	else
	{
		image_alpha = 1;
	}
	
	if (alarm[11] <= 0)
	{
		alarm[11] = 5;
	}
}
if (_hp <= 0)
{
	instance_destroy();
}

_hpush = lerp(_hpush, 0, 0.01);
_vpush = lerp(_vpush, 0, 0.01);


Move();

image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;

//apply the shift

if instance_exists(o_playerShip) && (alarm[10] <= 0)
{
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) < 30)
	{
		if (o_playerShip.pluggedFinal = false)
		{
			if (2+global.chipsVertex/2 <= global.cableStat*2)
			{
			direction = point_direction(x,y, o_playerShip.x, o_playerShip.y)
			speed = 4;
			}
		}
	}

}