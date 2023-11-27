// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyBasicChasingIAAnchored()
{
	if (instance_exists(anchor))
	{
		contBounce--;
	
		if (tile_meeting(x+hspeed,y,"Tiles"))
		{
		    hspeed = -hspeed*bnc;
		}
		else if (tile_meeting(x,y+vspeed,"Tiles"))
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
	
		var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
			
		if (contBounce <=0)
		{
			direction+= sign(dsin(a - direction)) * (precision * global.relativeSpeed);
			_angle = direction;
		}
		if (instance_exists(anchor)) && instance_exists(cable)
		{
			if (point_distance(x,y,anchor.x, anchor.y) > max(50, 9 * cable._segments) * farDist) && contBounce < 0
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