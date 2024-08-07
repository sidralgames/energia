// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_WaitingAnchored()
{
	if (bouncesWaiting > 0)
	{
		contTimeBounces +=1;
		
		if (contTimeBounces >= 60)
		{
			bouncesWaiting = 0;
		}
	}
	
	
	
	if (bouncesWaiting >= 5)
	{
		mp_grid_path(global.gridRoom1, myPath, x, y, xStart ,yStart, true);
		
		path_start(myPath, 1* global.relativeSpeed ,path_action_stop, false);
		_angle = direction;
		
		if (point_distance(x, y, xStart, yStart) < 10) 
		{
			bouncesWaiting = 0;
			path_end();
		}
		
		if instance_exists(o_playerShip)
		{
			if (point_distance(x, y, o_playerShip.x, o_playerShip.y) <= activeDistance) 
			{
				if !grid_line_collision(x, y, o_playerShip.x, o_playerShip.y, 10)
				{
					bouncesWaiting = 0;
					path_end();
			
					contBounce = 0;
					state = ENEMYSTATE.CHASING;	
				}
			}
		}
		
	}
	else
	{
		
	contBounce--;
	
	enemySpeed = lerp(enemySpeed, enemySpeedInitialFar, 0.5)
	farDist = 0.8
	far = true;
		
	
		if (alarm[0] <=0)
		{
			alarm[0] = random_range(300,700);
			
			if (diffYFar <0)
			{
				direction = irandom(180);
			}
			else
			{
			
				direction = 179 + irandom(180);
			}
			
			_angle = direction;
			waitingSpeed = random_range(0.2,0.4);
			breakDistance = random_range(0.005, 0.05);
			accelDistance = random_range(0.005, 0.05);
		}
	
		if (alarm[0] >= 200) 
		{
			speed = lerp(speed, waitingSpeed, accelDistance) * global.relativeSpeed;
		}
		else
		{
			speed = lerp(speed, 0, breakDistance) * global.relativeSpeed;
		}
		if (instance_exists(anchor)) && instance_exists(cable)
		{
			if (point_distance(x,y,anchor.x, anchor.y) > max(50, 7.5 * cable._segments) * farDist)
			{
				direction = point_direction(x,y,anchor.x, anchor.y);
				_angle = direction;
			}
		}
		
		if !instance_exists(o_gameOver) && !instance_exists(o_menuScores)
		{
			if tile_meeting(x+lengthdir_x(5,direction), y+lengthdir_y(5,direction), "Tiles")
			{
				direction = (direction + random_range(140,220)) mod 360
				_angle = direction
				alarm[0] = random_range(50,60);
				bouncesWaiting +=1;
				contTimeBounces = 0;
			}
		}
		else
		{
			if place_meeting(x+lengthdir_x(5,direction), y+lengthdir_y(5,direction), o_wallGameOver)
			{
				direction = (direction + random_range(140,220)) mod 360
				_angle = direction
				alarm[0] = random_range(50,60);
			}
		}
	
	if instance_exists(o_playerShip)
	{
		if (point_distance(x, y, o_playerShip.x, o_playerShip.y) <= activeDistance) 
		{
			if !grid_line_collision(x, y, o_playerShip.x, o_playerShip.y, 10)
			{
				contBounce = 0;
				bouncesWaiting = 0;
				state = ENEMYSTATE.CHASING;	
			}
		}
	}
	
	}
	
	
	
}