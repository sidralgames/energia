// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemyBomberIA()
{
	
	if (alarm[4] <= 0)
	{
	
		diffX = choose(random_range(-50, -100), random_range(100,50));
		diffY = choose(random_range(-50, -100), random_range(100,50));
		alarm[4] = random_range(60, 90)
	}
	
	if (recoil <=0)
	{
		speed = lerp(speed, enemySpeed * min(1, global.relativeSpeed+0.2), 0.05);
		var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
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
	
	if (global.inScreen)
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