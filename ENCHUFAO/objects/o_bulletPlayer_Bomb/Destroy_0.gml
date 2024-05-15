/// @description Insert description here
// You can write your code in this editor
if (inScreen)
{
	//---- VIBRATION / DISTANCE ----//
	if instance_exists(o_playerShip)
	{
		dist = point_distance(x,y,o_playerShip.x, o_playerShip.y);
		
		vibrationPower = (5 / dist) * 10;
		
		vibrationPowerFinal = min(0.5, vibrationPower)
		
		if (global.bombIsHomingBomb) 
		{
			gamepad_set_vibration(0,vibrationPowerFinal/2,vibrationPowerFinal/2);
		}
		else
		{
			gamepad_set_vibration(0,vibrationPowerFinal,vibrationPowerFinal);
		}
	}
	
	//---- HAVE SMOKE UPGRADE? ----///
	if (global.haveSmokeBomb)
	{
		instance_create_layer(x,y,"Text",o_smokeFromBomb);
	}
	
	//--- HITTED BY LASER? ----//
	if (hitByLaser)
	{
		ebomb = instance_create(x,y,o_exploBomb);
		ebomb.scale = 1.4*scaleEnd;
		
		if (sprite_index = s_bombCluster)
		{
			ebomb.sprite_index = s_exploPurple;	
		}
		
		shock = instance_create(x,y,o_shockwaveTiles);
		helpShok = instance_create(x,y,o_shockwaveTiles);
		
		if (global.bombIsHomingBomb)  && (called = false)
		{
			shock.scale = 0.2;
			helpShok.scale = 0.4;
		}
		else
		{
			shock.scale = scaleEnd+0.2;
			helpShok.scale = scaleEnd + 0.4;
		}
	}
	else
	{
		ebomb = instance_create(x,y,o_exploBomb);
		ebomb.scale = 1.8*scaleEnd;
		
		if (sprite_index = s_bombCluster)
		{
			ebomb.sprite_index = s_exploPurple;	
		}
		
		shock = instance_create(x,y,o_shockwaveTiles);
		helpShok = instance_create(x,y,o_shockwaveTiles);
		
		if (global.bombIsHomingBomb)  && (called = false)
		{
			shock.scale = 0;
			helpShok.scale = 0;
		}
		else
		{
			shock.scale = scaleEnd;
			helpShok.scale = scaleEnd + 0.2;
		}
	}
}

