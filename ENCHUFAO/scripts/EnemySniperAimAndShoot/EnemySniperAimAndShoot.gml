// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemySniperAimAndShoot()
{
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) <= 350)
	&& (_angle < point_direction(x,y,o_playerShip.x, o_playerShip.y) + 40)
	&& (_angle > point_direction(x,y,o_playerShip.x, o_playerShip.y) - 40)
	&& (canAim <=0)
	{
		aiming = true;
	}
	else
	{
		aiming = false;
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
		
	if (aiming) //&& (playerTargeted) && (contDisp < 30)
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
		audio_play_sound_on(global.audioEmitter,snd_shoot_2, false, 80,,,random_range(0.8,1))
		
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
		
		path_end();
		playerTargeted = false;
		shocked = true;
		dirShoked = _angle;
		alarm[9] = 50;
		contDisp = contDispMax;
		aiming = false;
		canAim = random_range(100,150);
		recoil = 60;
		state = ENEMYSTATE.SHOCKED;
		hspeed -= lengthdir_x(1.2, _angle);
		vspeed -= lengthdir_y(1.2, _angle);
		
	}
}