// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingAnchored()
{
	if instance_exists(o_playerShip)
	{
		//----------------CHASING MOVENEMT------------------//
		
		if (alarm[4] <= 0)
		{
			if (global.haveInvisibiltyCloak && global.invisibleCloak = true) || (far = true)
			{
				diffX = choose(random_range(-5, 5));
				diffY = choose(random_range(-50, 50));
			}
			else
			{
				diffX = choose(random_range(-1, 1));
				diffY = choose(random_range(-1, 1));
			}
			alarm[4] = random_range(50, 60)
		}

		if instance_exists(o_playerShip)
		{
			EnemyBasicChasingIAAnchored();
		}
	}
	else
	{
		path_end();
		var a = point_direction(x, y, x+diffX,y+diffY);
		direction+= sign(dsin(a - direction)) * (precision * global.relativeSpeed);
		_angle = direction;
		
		if (instance_exists(anchor))
		{
			if (point_distance(x,y,anchor.x, anchor.y) > max(64, 10 * cable._segments) * farDist)
			{
				dir = point_direction(x,y,anchor.x,anchor.y)
				hspeed = lengthdir_x(0.1,dir)
				vspeed = lengthdir_y(0.1,dir)
		
				contBounce = random_range(1,2);
				precision= random_range(4,7);
				
		
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