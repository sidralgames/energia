// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyBasicChasingIA()
{
	if (slowed)
	{
		enemySpeed = lerp(enemySpeed, 0, 0.1+slowedPeta);
		slowedCont--;
		if (slowedCont <= 0)
		{
			slowedPeta = 0;
			slowedCont = slowedContMax;
			slowed = false;
		}
	}
	else
	{
		enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.1);
	}
	
	
	if (enemyIsWorm)
	{
		inEnchufe = collision_circle(x,y,30,o_enchufeStandard_Father,false,true)
		
		if (plugged)
		{
			if (_hp <= 0)
			{
				enchufe.occupied = false;
			}
			
			contPlugged--;
			
			if (contPlugged<=0)
			{
				plugged = false;
				cable.contPlugBody = 50;
				enchufe.occupied = false;
				enchufe.enchufeOvercharged = true;
				enchufe.contOvercharged = 250;
				contCanPlug = 120;
				contPlugged = random_range(contPluggedMin, contPluggedMax)
			}
			
			if (point_distance(x,y,enchufe.x,enchufe.y) <= movementDistancePlugged)
			{
				if (_hp <= 0)
				{
					enchufe.occupied = false;
				}
				BasicEnemyMovement();
			}
			else
			{
				path_end();
				if (_hp <= 0)
				{
					enchufe.occupied = false;
				}
				dir = point_direction(x,y,enchufe.x,enchufe.y)
				
				hspeed = lengthdir_x(1,dir)
				vspeed = lengthdir_y(1,dir)
		
				enchufe._hpush -= lengthdir_x(0.1,dir)
				enchufe._vpush -= lengthdir_y(0.1,dir)
			}
		}
		else
		{
			BasicEnemyMovement();
		}
		
		if (contCanPlug >0)
		{
			contCanPlug--;
		}
		
		if (inEnchufe) && (contCanPlug<=0) && (!plugged) && (inEnchufe.enchufeOvercharged = false)
		{	
			enchufe = inEnchufe;
			if (!enchufe.occupied) && (!plugged) && (!enchufe.enchufeBomb)
			{
				if (enchufe.occupied = false)
				{
					enchufe.occupied = true;
					plugging = true;
					contPlugged = random_range(contPluggedMin, contPluggedMax)
				}
			}
		}
		
		
	}
	else
	{
		BasicEnemyMovement();
	}
}