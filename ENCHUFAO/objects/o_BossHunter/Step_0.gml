/// @description Insert description here
// You can write your code in this editor
event_inherited();

laserXPos = x + lengthdir_x(30, _angle);
laserYPos = y + lengthdir_y(30, _angle);



cableXPos = x + lengthdir_x(-cableOff, _angle);
cableYPos = y + lengthdir_y(-cableOff, _angle);


if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

switch(state)
{
	case ENEMYSTATE.WAITING: Enemy_Waiting(); break;
	case ENEMYSTATE.CHASING: Enemy_Chasing(); break;
	case ENEMYSTATE.HUNTERATTACK: BossHunterAttack(); break;
	case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
}

//if instance_exists(lightEnemy)
//	{
//		lightEnemy.light [| eLight.X] = x
//		lightEnemy.light [| eLight.Y] = y
//	}

if (_hp <= 0)
{
	
	if (plugged)
	{
		enchufe.occupied = false;
		enchufe.occupied = false;
		enchufe.enchufeOvercharged = true;
		enchufe.contOvercharged = 250;
	}
	
	EnemyDeathShake();
	
	global.XPpoints +=enemyXP;
	
	explo = instance_create(x,y,o_exploPurple);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}

if (enterAttackModeCont >= 0)
{
	enterAttackModeCont --;
}
if instance_exists(o_playerShip)
{
	if (point_distance(x,y,o_playerShip.x, o_playerShip.y) < 400) && (attackMode = false) && (enterAttackModeCont <= 0)
	{
		if !tile_meeting(x + lengthdir_x(30, 1), y+ lengthdir_y(30, 1), "Tiles") ||
		!tile_meeting(x + lengthdir_x(30, 90), y+ lengthdir_y(30, 90), "Tiles") ||
		!tile_meeting(x + lengthdir_x(30, 180), y+ lengthdir_y(30, 180), "Tiles") ||
		!tile_meeting(x + lengthdir_x(30, 270), y+ lengthdir_y(30, 270), "Tiles")
		{
		
			attackToDo = choose("Laser", "Bouncer");
		
			switch (attackToDo) 
			{
				case "Laser": 
				{
					attackModeLaser = true;
					enemySpeed = enemySpeedLaserAttack
					enemySpeedInitial = enemySpeedLaserAttack;
					shootingLaser = true;
					precision = precisionLaserAttack;
					state = ENEMYSTATE.HUNTERATTACK;
					dir = choose(-1,1)
					spinVel = random_range(0.5,1.5)
					laser = instance_create(laserXPos,laserYPos,o_laserHunter);
				}
				break;
			
				case "Bouncer": 
				{
					attackModeLaser = true;
					timeAttackingBounce = random_range(200,500);
					attackBouncerCont = 90;
					enemySpeed = enemySpeedLaserAttack+1
					enemySpeedInitial = enemySpeedLaserAttack+1;
					precision = precisionLaserAttack+0.5;
					state = ENEMYSTATE.HUNTERATTACK;
				}
				break;
			}
		
			attackMode = true;
		}
	}
}