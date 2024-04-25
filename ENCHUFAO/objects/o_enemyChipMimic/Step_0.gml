/// @description Insert description here
// You can write your code in this editor

if (scale < 1.1)
{
	scale +=0.1;
}


if (_hp <= 0)
{
	explo = instance_create(x,y,o_exploPurple);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
		
	global.enemyBadChipKills +=1;
	
	if (global.bestiaryEnemyBadChipUnlocked = 0)
	{
		global.bestiaryEnemyBadChipUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
	
	instance_destroy();
	
}


_hpush = lerp(_hpush, 0, 0.01);
_vpush = lerp(_vpush, 0, 0.01);


Move();

image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;


if instance_exists(o_playerShip) && (alarm[10] <= 0) && (2+global.chipsVertex/2 <= global.cableStat*2)
{
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) < 30)
	{
		if (o_playerShip.pluggedFinal = false)
		{
			direction = point_direction(x,y, o_playerShip.x, o_playerShip.y)
			speed = 4;
		}
	}
}