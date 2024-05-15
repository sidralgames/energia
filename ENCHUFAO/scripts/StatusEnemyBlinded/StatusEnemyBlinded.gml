// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function StatusEnemyBlinded()
{
	if instance_exists(o_playerShip)
	{
		with (o_playerShip)
		{
			if (key_r3Dowm)
			{
				if (point_distance(x,y, other.x, other.y) < 300) 
				{
					if (point_in_triangle(other.x, other.y,
					x-lengthdir_x(iniLightOff,_angle-90), y-lengthdir_y(iniLightOff, _angle-90),
					x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff),
					x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff)))
					{
						other.inBlindArea = true;
						other.blindFlash = lerp(other.blindFlash, 0.7, 0.7);
						other.contBlind += other.blindFlash;
					}
					else
					{
						other.inBlindArea = false;
					}
				}
			}
			else
			{
				other.blindFlash = other.initialBlindFlash;
				other.inBlindArea = false;
			}
		}

	}

	if (inBlindArea = false)
	{
		contBlind -= 0.5;
	}
	if (contBlind >= global.bindedTop)
	{
		blinded = true;
		blindedTime = random_range(global.enemyBlindTimeMin, global.enemyBlindTimeMax);
		contBlind = 0;
		blindFlash = initialBlindFlash;
	}

	if (contBlind <= 0)
	{
		contBlind = 0;
	}

	if (blindedTime >= 0) 
	{
		blindedTime --;
	}

	if (blindedTime <=0)
	{
		blinded = false;
	}

	if (blinded = false) && (inBlindArea = false)
	{
		blindFlash = initialBlindFlash;
	}

	if (blinded = true)
	{
		contElectroPart--;
	
		if (contElectroPart <= 0)
		{
			contElectroPart = random_range(1,3) ;
			part_particles_create(global.blinded_sys, x+random_range(15,-15), y+random_range(15,-15), global.blindedPart , 2);
		}
	}
}