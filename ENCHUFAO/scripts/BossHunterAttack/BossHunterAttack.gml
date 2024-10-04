// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossHunterAttack()
{
	
	switch (attackToDo) 
	{
		case "Laser": 
		{
			Enemy_Chasing();
			//path_end();
	
			image_speed = 0.5;
			sprite_index = laserAttackSprite;
	
			if (timeShootingLaser >= 0)
			{
				timeShootingLaser--;
			}
	
			if (image_index > 12 && image_index < 18 ) 
			{
				cableOff = 10;
				changeCable = true;
				isShootingLaser = true;
				timeShootingLaser = 300;
			}
	
			if (isShootingLaser)
			{
				repeatAnimation = true
			}
	
			if (repeatAnimation)
			{
				if (image_index > 30)
				{
					image_index = 18;	
				}
			}
	
			_angle = lerp(_angle, direction, 0.05);
	
			if (timeShootingLaser <= 0) && (isShootingLaser)
			{
				isShootingLaser = false;
				instance_destroy(laser);
				repeatAnimation = false;
				cableOff = 5;
				changeCable = true;
			}
	
			if (image_index >= 52)
			{
				state = ENEMYSTATE.CHASING;	
				sprite_index = idleSprite;
				enemySpeed = enemySpeedInitialAux;
				enemySpeedInitial = enemySpeedInitialAux;
				precision = precisionInitial;
				attackModeLaser = false;
				attackMode = false;
				enterAttackModeCont = random_range(300,500)
			}
		}
		break;
		
		case "Bouncer":
		{
			Enemy_Chasing();
			//path_end();
	
			sprite_index = bouncerAttackSprite;
			
			timeAttackingBounce --;
			
			if (attackBouncerCont >= 0)
			{
				attackBouncerCont --;
			}
			
			if (attackBouncerCont <= 0)
			{
				isAttackingBouncer = true;
			}
			
			if (isAttackingBouncer = true) && (timeAttackingBounce > 0)
			{
				image_speed = 0.4;
				
				if (image_index >= 20) && (bouncerCreated = false)
				{
					bouncerXPos = x + lengthdir_x(10, _angle);
					bouncerYPos = y + lengthdir_y(10, _angle);
					_angleShoot = _angle
					bouncerCreated = true
					bouncer = instance_create_layer(bouncerXPos,bouncerYPos,"Bullets",o_bouncerHunter)
					bouncer.discSpeed = random_range(2,2.75);
					bouncer.direction = _angle;
					hspeed += -lengthdir_x(1, _angle);
					vspeed += -lengthdir_y(1, _angle);
					haveShoot = true;
				}
				
				if (haveShoot)
				{
					_angle = _angleShoot
				}
				if (image_index >= 25)
				{
					haveShoot = false;
				}
				
				if (image_index >= 32)
				{
					bouncerCreated = false;
					//isAttackingBouncer = false;
					attackBouncerCont = random_range(60,120)
					image_speed = 0;
					image_index = 0;
				}
			}
			
			if (timeAttackingBounce <= 0)
			{
				if (image_index <= 2)
				{
					
					state = ENEMYSTATE.CHASING;	
					sprite_index = idleSprite;
					enemySpeed = enemySpeedInitialAux;
					enemySpeedInitial = enemySpeedInitialAux;
					precision = precisionInitial;
					attackModeLaser = false;
					attackMode = false;
					enterAttackModeCont = random_range(300,500)
					image_index = 0;
					isAttackingBouncer = false;
				}
			}
		}
		break;
	}
}