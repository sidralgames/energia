/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case ENEMYSTATE.WAITING: Enemy_Waiting(); break;
	case ENEMYSTATE.CHASING: Enemy_Chasing(); break;
	case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
}



if (_hp <= 0)
{
	screenShake(1,10);
	
	global.XPpoints +=enemyXP;
	
	explo = instance_create(x,y,o_explo2);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}

if instance_exists(o_playerShip)
{
	if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 300)
	{
		dire = direction;
		if (alarm[0] <= 0)
		{
			var bullet = instance_create_layer(x + lengthdir_x(20, dire), y + lengthdir_y(20, dire),
			"Bullets", o_bulletEnemy);
			off =  random_range(5,-5)
			bullet._hpush = lengthdir_x(3, dire + off);
			bullet._vpush = lengthdir_y(3, dire + off);
			bullet.image_angle = dire+off;
			bullet.direction = dire+off;
			
			alarm[0] = random_range(60,120)
		}
	}
}


