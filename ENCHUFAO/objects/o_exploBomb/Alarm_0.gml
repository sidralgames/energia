/// @description Insert description here
// You can write your code in this editor
drawflash = false;

if instance_exists(o_playerShip)
{
	dist = point_distance(x,y,o_playerShip.x, o_playerShip.y);
}
		
shakePower = (5 / dist) * 100;

shakePowerFinal = min(8, shakePower)


switch(isFrom)
{
	case "PlayerBomb":
	{
		if (global.bombIsHomingBomb)
		{
			screenShake(shakePowerFinal/2,10);
			shockwave1 = instance_create(x,y,o_shockwave);
			shockwave1.scale = 0;

			shockwave2 = instance_create(x,y,o_shockwaveTiles2)
			shockwave2.scale = 0.3;
		}
		else
		{
			screenShake(shakePowerFinal,60,shakePowerFinal);
			shockwave1 = instance_create(x,y,o_shockwave);
			shockwave1.scale = scaleShockwave;

			shockwave2 = instance_create(x,y,o_shockwaveTiles2)
			shockwave2.scale = scale-0.2;
		}
	}break;
	
	case "BulletBomb":
	{
		screenShake(shakePowerFinal/2,10);
		shockwave1 = instance_create(x,y,o_shockwave);
		shockwave1.scale = 0.5;

		shockwave2 = instance_create(x,y,o_shockwaveTiles2)
		shockwave2.scale = 0.3;
	}break;
	
	case "EnemyBomb":
	{
		screenShake(shakePowerFinal,40);
		shockwave1 = instance_create(x,y,o_shockwave);
		shockwave1.scale = scaleShockwave;

		shockwave2 = instance_create(x,y,o_shockwaveTiles2)
		shockwave2.scale = scale-0.2;
		
	}break;
	
	case "BossBomb":
	{
		screenShake(shakePowerFinal,50);
		shockwave1 = instance_create(x,y,o_shockwave);
		shockwave1.scale = scaleShockwave;

		shockwave2 = instance_create(x,y,o_shockwaveTiles2)
		shockwave2.scale = scale-0.2;
		
	}break;
}

