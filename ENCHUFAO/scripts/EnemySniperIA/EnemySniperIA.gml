// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemySniperIA()
{
	if (recoil <=0)
	{
		if (aiming)
		{
			var a = point_direction(x, y, o_playerShip.x,o_playerShip.y);
			direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
			_angle = direction;
			
			if (tile_meeting(x+hspeed,y,"Tiles"))
			{
			    hspeed = -hspeed*bnc;
			}
			else if (tile_meeting(x,y+vspeed,"Tiles"))
			{
			    vspeed = -vspeed*bnc;
			}
			
		} 
		else if (global.haveInvisibiltyCloak && global.invisibleCloak == true) || (global.inSmokeArea = true)
		{
			path_end()
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
			}
			else if (tile_meeting(x,y+vspeed,"Tiles"))
			{
			    vspeed = -vspeed*bnc;
			}
				
		
		}
		else
		{
		
			mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
			if tile_meeting(x + lengthdir_x(45, 1), y+ lengthdir_y(45, 1), "Tiles") ||
			tile_meeting(x + lengthdir_x(45, 90), y+ lengthdir_y(45, 90), "Tiles") ||
			tile_meeting(x + lengthdir_x(45, 180), y+ lengthdir_y(45, 180), "Tiles") ||
			tile_meeting(x + lengthdir_x(45, 270), y+ lengthdir_y(45, 270), "Tiles") || 
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
				path_start(myPath,_speed ,path_action_stop, false)
				_angle = direction;

			}
			else
			{
				path_end()
				var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
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
			}
		}
	}
	else
	{
		hspeed = lerp(hspeed, 0, 0.09)
		vspeed = lerp(vspeed, 0, 0.09)
		
	}
	
	speed = lerp(speed, enemySpeed * min(1, global.relativeSpeed+0.2), 0.05);
	inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
	(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

	
	if (inScreen)
	{
		contParts --;
		if (contParts <=0)
		{
			part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,direction), y-lengthdir_y(7,direction), global.naveEnemy_Waiting , 1)
			contParts = contPartsInitial;
		}	
	}
	
	EnemySniperAimAndShoot();
}