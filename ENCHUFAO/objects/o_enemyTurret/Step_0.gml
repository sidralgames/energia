/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case ENEMYSTATE.WAITING: Enemy_Waiting(); break;
	case ENEMYSTATE.CHASING: Enemy_Chasing(); break;
	case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
}

//if instance_exists(lightEnemy)
//	{
//		lightEnemy.light [| eLight.X] = x
//		lightEnemy.light [| eLight.Y] = y
//	}

contTurret -=1;

if instance_exists(o_playerShip)
{
	if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 200)
	{
		dire = direction;
		if (alarm[11] <= 0)
		{
			var bullet = instance_create_layer(x + lengthdir_x(20, dire), y + lengthdir_y(20, dire),
			"Bullets", o_bulletEnemy);
			off =  random_range(5,-5)
			bullet._hpush = lengthdir_x(3.2, dire + off);
			bullet._vpush = lengthdir_y(3.2, dire + off);
			bullet.image_angle = dire+off;
			bullet.direction = dire+off;
			
			alarm[11] = random_range(120,130)
		}
	}
	
	if (state = ENEMYSTATE.CHASING) && (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 250)
	{
		if (contTurret <= 0)
		{
			turret = instance_create_layer(x,y,"Enemies", o_turretFromEnemy)
			turret._hpush = lengthdir_x(random_range(2,3), direction+180)
			turret._vpush = lengthdir_y(random_range(2,3), direction+180)
			contTurret = contTurretInitial;
			
		}
		
	}
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