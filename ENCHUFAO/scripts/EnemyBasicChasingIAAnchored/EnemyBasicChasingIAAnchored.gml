// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyBasicChasingIAAnchored()
{
	if (instance_exists(anchor))
	{
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
	
		if (global.haveInvisibiltyCloak && global.invisibleCloak == true) || (farDist = 0.7)
		{
			path_end()
			var a = point_direction(x, y, x+diffX,y+diffY);
			direction+= sign(dsin(a - direction)) * (precision * global.relativeSpeed);
			_angle = direction;
		
		
			if (point_distance(x,y,anchor.x, anchor.y) > max(50, 13 * cable._segments) * farDist)
			{
				dir = point_direction(x,y,anchor.x,anchor.y)
				hspeed = lengthdir_x(0.1,dir)
				vspeed = lengthdir_y(0.1,dir)
		
				contBounce = random_range(1,2);
				precision= random_range(4,7);
		
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
			contBounce--;
			var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
	
			direction+= sign(dsin(a - direction)) * (precision * global.relativeSpeed);
			_angle = direction;
		
		
			if (point_distance(x,y,anchor.x, anchor.y) > max(50, 9 * cable._segments) * farDist)
			{
				dir = point_direction(x,y,anchor.x,anchor.y)
				hspeed = lengthdir_x(0.1,dir)
				vspeed = lengthdir_y(0.1,dir)
		
				contBounce = random_range(1,2);
				precision= random_range(4,7);
		
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