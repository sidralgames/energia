/// @description Insert description here
// You can write your code in this editor
_hp = global.BossBreach_HP;

if (alarm[0] <= 0)
{
	image_speed = -imageSpeed;
	
	if (image_index <=1)
	{
		instance_destroy();
	}
}
else
{
	if (image_index >= 40)
	{
		image_index =24;
	}
}


dire = point_direction(x,y,o_playerShip.x, o_playerShip.y);
		if (alarm[2] <= 0)
		{
			var bullet = instance_create_layer(x + lengthdir_x(20, dire), y + lengthdir_y(20, dire),
			"Bullets", o_bulletBossEnemy);
			off =  random_range(5,-5)
			bullet._hpush = lengthdir_x(3, dire + off);
			bullet._vpush = lengthdir_y(3, dire + off);
			bullet.image_angle = dire+off;
			bullet.direction = dire+off;
			
			alarm[2] = random_range(30,60)
		}


if (_hp <= 0)
{
	instance_create(x,y,o_exploBomb)
	instance_destroy();	
}



