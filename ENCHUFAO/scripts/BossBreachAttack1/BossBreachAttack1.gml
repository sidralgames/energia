// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossBreachAttack1()
{
	image_speed = imageSpeed * global.relativeSpeed;
	
	if (alarm[5] > 0)
	{
		if instance_exists(o_playerShip)
		{
			dire = point_direction(x,y,o_playerShip.x, o_playerShip.y);
			if (alarm[2] <= 0)
			{
				var bullet = instance_create_layer(x + lengthdir_x(20, dire), y + lengthdir_y(20, dire),
				"Bullets", o_bulletBossEnemy);
				off =  random_range(5,-5)
				if instance_exists(bullet)
				{
					bullet._hpush = lengthdir_x(3, dire + off);
					bullet._vpush = lengthdir_y(3, dire + off);
					bullet.image_angle = dire+off;
					bullet.direction = dire+off;
				}
			
				alarm[2] = random_range(30,60)
			}
		}
	}
	else
	{
		state = BOSSBREACHSTATE.IDLE;
		alarm[4]=idleTime;
	}
	
	CheckBossFading();
}