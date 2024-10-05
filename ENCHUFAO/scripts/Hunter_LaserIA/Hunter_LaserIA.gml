// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hunter_LaserIA()
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
	
	if (global.haveInvisibiltyCloak && global.invisibleCloak == true) || (global.inSmokeArea = true)
	|| (blinded = true)
	{
		if (path_exists(myPath))
		{
			path_end();
		}
		
		var a = point_direction(x, y, x+diffX,y+diffY);
		direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
		_angle = direction;
		
		if (alarm[10] <= 0)
		{
			speed = enemySpeed * min(1, global.relativeSpeed+0.2);
		}
		else
		{
			speed = enemySpeed
		}
		
		if (tile_meeting(x+hspeed,y,"Tiles"))
		{
		    hspeed = -hspeed*bnc;
			alarm[4] = 0;
		}
		
		if (tile_meeting(x,y+vspeed,"Tiles"))
		{
		    vspeed = -vspeed*bnc;
			alarm[4] = 0;
		}

	}
	else
	{
		
		mp_grid_path(global.gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
		if tile_meeting(x + lengthdir_x(30, 1), y+ lengthdir_y(30, 1), "Tiles") ||
		tile_meeting(x + lengthdir_x(30, 90), y+ lengthdir_y(30, 90), "Tiles") ||
		tile_meeting(x + lengthdir_x(30, 180), y+ lengthdir_y(30, 180), "Tiles") ||
		tile_meeting(x + lengthdir_x(30, 270), y+ lengthdir_y(30, 270), "Tiles") || 
		tile_meeting(x, y, "Tiles")
		{
			if (alarm[10] <= 0)
			{
				_speed = enemySpeed * min(1, global.relativeSpeed+0.2);
			}
			else
			{
				_speed = enemySpeed;
			}
			
			path_start(myPath, _speed ,path_action_stop, false);
			
			if (isShootingLaser)
			{
				_angle += dir * spinVel
			}

		}
		else
		{
			if (path_exists(myPath))
			{
				path_end();
			}
			
			if (isShootingLaser)
			{
				_angle += dir * spinVel
			}
			
			if (alarm[10] <= 0)
			{
				speed = enemySpeed * min(1, global.relativeSpeed+0.2);
			}
			else
			{
				speed = enemySpeed
			}
			
			if (tile_meeting(x+hspeed,y,"Tiles"))
			{
			    hspeed = -hspeed*bnc;
				alarm[4] = 0;
			}
		
			if (tile_meeting(x,y+vspeed,"Tiles"))
			{
			    vspeed = -vspeed*bnc;
				alarm[4] = 0;
			}
			
		}
	}

}