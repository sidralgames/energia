// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyBasicChasingIAAnchored()
{
	if (instance_exists(anchor))
	{
		contBounce--;
	
		if (tile_meeting(x+hspeed*1.5,y,"Tiles"))
			{
			    hspeed = -hspeed*bnc;
			}
			else if (tile_meeting(x,y+vspeed*1.5,"Tiles"))
			{
			    vspeed = -vspeed*bnc;
			}
	
		if (slowed)
		{
			enemySpeed = lerp(enemySpeed, 0, 0.08);
			slowedCont--;
			if (slowedCont <= 0)
			{
				slowedCont = slowedContMax;
				slowed = false;
			}
		}
		else
		{
			enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.1);
		}
	
		if (global.haveInvisibiltyCloak && global.invisibleCloak == true) || (far = true)
		{
			path_end()
			var a = point_direction(x, y, x+diffX,y);
			if contBounce <=0
			{
				direction+= sign(dsin(a - direction)) * (precision * global.relativeSpeed);
				_angle = direction;
			}
		
			if (instance_exists(anchor))
			{
				if (point_distance(x,y,anchor.x, anchor.y) > max(64, 10 * cable._segments) * farDist)
				{
					contBounce = random_range(5,10);
					
					dir = point_direction(x,y,anchor.x,anchor.y)
					
					hspeed = lengthdir_x(0.001,dir)
					vspeed = lengthdir_y(0.001,dir)
		
					activeDistance = random_range(100, 150);
					precision= random_range(1,2);
		
				}
			}
	
			speed = enemySpeed * min(1, global.relativeSpeed+0.2);
		
		
			if (tile_meeting(x+hspeed,y,"Tiles"))
			{
			    hspeed = -hspeed*bnc;
			}
			else if (tile_meeting(x,y+vspeed,"Tiles"))
			{
			    vspeed = -vspeed*bnc;
			}
		
				
		
		}
		else
		{
		
			path_end()
			
			var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
			
			if (contBounce <=0)
			{
				direction+= sign(dsin(a - direction)) * (precision * global.relativeSpeed);
				_angle = direction;
			}
			if (instance_exists(anchor))
			{
				if (point_distance(x,y,anchor.x, anchor.y) > max(50, 10 * cable._segments) * farDist)
				{
					contBounce = random_range(5,10);
					
					dir = point_direction(x,y,anchor.x,anchor.y)
					
					hspeed = lengthdir_x(0.05,dir)
					vspeed = lengthdir_y(0.05,dir)
					
					activeDistance = random_range(100, 150);
					precision= random_range(3,4);
		
				}
			}
	
			speed = enemySpeed * min(1, global.relativeSpeed+0.2);
		
		
			if (tile_meeting(x+hspeed,y,"Tiles"))
			{
			    hspeed = -hspeed*bnc;
			}
			else if (tile_meeting(x,y+vspeed,"Tiles"))
			{
			    vspeed = -vspeed*bnc;
			}
		
		}
	}
}