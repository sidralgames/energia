// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemySniperIA()
{
	
	if (recoil <=0)
	{
		speed = lerp(speed, enemySpeed * min(1, global.relativeSpeed+0.2), 0.05);
		var a = point_direction(x, y, o_playerShip.x,  o_playerShip.y);
		direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
		_angle = direction;
	}
	else
	{
		hspeed = lerp(hspeed, 0, 0.09)
		vspeed = lerp(vspeed, 0, 0.09)
		
		if (abs(speed) <= 0.1)
		{
			direction = _angle;
			recoil = 0;
		}
	}
	
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
			var maxLenght_ = 940;
			for(var i = 0; i < maxLenght_; i++)
			{
			     var lx = x + lengthdir_x(i, direction);
			     var ly = y + lengthdir_y(i, direction);
		 
			     if tile_meeting(lx,ly,"Tiles") || place_meeting(lx, ly, o_playerShip) 
				 {
					 maxLenght_=i
					 maxLenght = maxLenght_;
				 }
				 
				 if place_meeting(lx, ly, o_playerShip) 
				 {
				 	playerTargeted = true;
					//contDisp = contDispMax;
					precision = precisionPlayer;
				 }
			}	
			
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
			
	if (contDisp <= 0) 
	{
		if (isMegaEnemy)
		{
			var bullet = instance_create_layer(x + lengthdir_x(10, _angle), y + lengthdir_y(10, _angle),
			"Bullets", o_bulletEnemy);
			bullet.bulletSpeed = bulletVelo;
			bullet.image_angle = _angle;
			bullet.direction = _angle;
		}
			
		var bullet2 = instance_create_layer(x + lengthdir_x(10, _angle), y + lengthdir_y(10, _angle),
		"Bullets", o_bulletEnemy);
		bullet2.bulletSpeed = bulletVelo;
		bullet2.image_angle = _angle-offBullet;
		bullet2.direction = _angle-offBullet;
	
		var bullet3 = instance_create_layer(x + lengthdir_x(10, _angle), y + lengthdir_y(10, _angle),
		"Bullets", o_bulletEnemy);
		bullet3.bulletSpeed = bulletVelo;
		bullet3.image_angle = _angle+offBullet;
		bullet3.direction = _angle+offBullet;
			
		playerTargeted = false;
	
		contDisp = contDispMax;
		aiming = false;
		canAim = random_range(100,200);
		recoil = 60;
		hspeed -= lengthdir_x(2, _angle);
		vspeed -= lengthdir_y(2, _angle);
	}
}