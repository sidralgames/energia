/// @description Insert description here
// You can write your code in this editor
drawflash = false;

switch(isFrom)
{
	case "PlayerBomb":
	{
		if (global.bombIsHomingBomb)
		{
			screenShake(3,40);
			shockwave1 = instance_create(x,y,o_shockwave);
			shockwave1.scale = scaleShockwave;

			shockwave2 = instance_create(x,y,o_shockwaveTiles2)
			shockwave2.scale = scale-0.2;
		}
		else
		{
			screenShake(5,60);
			shockwave1 = instance_create(x,y,o_shockwave);
			shockwave1.scale = scaleShockwave;

			shockwave2 = instance_create(x,y,o_shockwaveTiles2)
			shockwave2.scale = scale-0.2;
		}
	}break;
	
	case "BulletBomb":
	{
		screenShake(2,30);
		shockwave1 = instance_create(x,y,o_shockwave);
		shockwave1.scale = 0.5;

		shockwave2 = instance_create(x,y,o_shockwaveTiles2)
		shockwave2.scale = 0.3;
	}break;
	
	case "EnemyBomb":
	{
		screenShake(3,40);
		shockwave1 = instance_create(x,y,o_shockwave);
		shockwave1.scale = scaleShockwave;

		shockwave2 = instance_create(x,y,o_shockwaveTiles2)
		shockwave2.scale = scale-0.2;
	}break;
	
	case "BossBomb":
	{
		screenShake(4,50);
		shockwave1 = instance_create(x,y,o_shockwave);
		shockwave1.scale = scaleShockwave;

		shockwave2 = instance_create(x,y,o_shockwaveTiles2)
		shockwave2.scale = scale-0.2;
	}break;
}

