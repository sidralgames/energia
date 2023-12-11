// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Waiting()
{
	if instance_exists(o_playerShip)
	{
		if ((point_distance(x,y,o_playerShip.x, o_playerShip.y) <  alertDist) && (global.invisibleCloak == false))
		|| (waiting = false)
		{
			alert = instance_create(x,y,o_invisibleAlert);
			
			speed=(random(1)+1) * global.relativeSpeed;
			_speed = speed;
			
			if instance_exists(alert)
			{
				state = ENEMYSTATE.CHASING;
			}
		}
	}

	//------WAITING MOVEMENT--------//
	inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
	(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

	if (inScreen)
	{
		contParts --;
		if (contParts <=0)
		{
			part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)
			contParts = contPartsInitial;
		}
	}
	
	if (alarm[0] <=0)
	{
		alarm[0] = random_range(300,700);
		direction = irandom(360);
		_angle = direction;
		waitingSpeed = random_range(0.4,0.7);
		breakDistance = random_range(0.005, 0.05);
		accelDistance = random_range(0.005, 0.05);
	}
	
	if alarm[0] >= 200 
	{
		speed = lerp(speed, waitingSpeed, accelDistance) * global.relativeSpeed;
	}
	else
	{
		speed = lerp(speed, 0, breakDistance) * global.relativeSpeed;
	}

	if (point_distance(xStart, yStart,x, y) > maxDistance)
	{
		direction = (direction + 180) mod 360;
		_angle = direction;
	}
	
	if tile_meeting(x+lengthdir_x(5,direction), y+lengthdir_y(5,direction), "Tiles")
	{
		direction = (direction + random_range(140,220)) mod 360
		_angle = direction
		alarm[0] = random_range(50,60);
	}
}