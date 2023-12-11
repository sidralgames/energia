// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemyBomberIA()
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
		else if (global.haveInvisibiltyCloak && global.invisibleCloak == true)
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
	
			if tile_meeting(x + lengthdir_x(20, 1), y+ lengthdir_y(20, 1), "Tiles") ||
			tile_meeting(x + lengthdir_x(20, 90), y+ lengthdir_y(20, 90), "Tiles") ||
			tile_meeting(x + lengthdir_x(20, 180), y+ lengthdir_y(20, 180), "Tiles") ||
			tile_meeting(x + lengthdir_x(20, 270), y+ lengthdir_y(20, 270), "Tiles") || 
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
			part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(12,direction), y-lengthdir_y(12,direction), global.naveEnemy_Waiting , 1)
			contParts = contPartsInitial;
		}
	}
	
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) <= 350)
	&& (_angle < point_direction(x,y,o_playerShip.x, o_playerShip.y) + 40)
	&& (_angle > point_direction(x,y,o_playerShip.x, o_playerShip.y) - 40)
	&& (canAim <=0)
	{
		aiming = true;
	}
	
	if (aiming)
	{
		contLaser--;
	
		if (contLaser <=0)
		{
			playerTargeted = true;
			//contDisp = contDispMax;
			precision = precisionPlayer
			contLaser = 3;
		}
	}
		
	if (playerTargeted)
	{
		contDisp--;
	}
		
	if (aiming) && (playerTargeted) && (contDisp < 30)
	{
			
		precision = lerp(precision, 0.2, 0.05)
		enemySpeed = lerp(enemySpeed, 0 ,0.05)	
	}
	else
	{
		precision = lerp(precision, precisionInitial, 0.05)
		enemySpeed = lerp(enemySpeed, enemySpeedInitial ,0.05)	
	}
		
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) >= 400)
	{
		aiming = false;
		contDisp = contDispMax;
		playerTargeted = false;
	}
				
	if (contDisp <= 0) && !(tile_meeting(x+hspeed*3.5, y+vspeed*3.5, "Tiles"))
	{	
		var bullet = instance_create_layer(x + lengthdir_x(10, _angle), y + lengthdir_y(10, _angle),
		"Bullets", o_bombEnemy);
		bullet.bulletSpeed = random_range(2.25, 3.5);
		bullet.image_angle = _angle;
		bullet.direction = _angle;
									
		playerTargeted = false;
			
		contDisp = contDispMax;
		aiming = false;
		canAim = random_range(100,200);
		recoil = 70;
		hspeed -= lengthdir_x(bullet.bulletSpeed, _angle);
		vspeed -= lengthdir_y(bullet.bulletSpeed, _angle);
	}
	
	if (isMegaEnemy)
	{
		contDropBomb --;
		
		if (contDropBomb<= 0) 
		{	
			var bullet = instance_create_layer(x - lengthdir_x(10, _angle), y - lengthdir_y(10, _angle),
			"Bullets", o_bombEnemy);
			bullet.bulletSpeed = random_range(1.5, 2);
			bullet.image_angle = _angle;
			bullet.direction = _angle+180;
			
			contDropBomb = random_range(120,400);
		}	
	}
}