/// @description Insert description here
// You can write your code in this editor
event_inherited();

image_speed = 0.5 * global.relativeSpeed;

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}
if instance_exists(o_playerShip)
{
	if (point_distance(x,y,o_playerShip.x, o_playerShip.y) > activeDistance)
	{
		enemySpeed = lerp(enemySpeed, enemySpeedInitialFar, 0.5)
		farDist = 0.8
		far = true;
	}
	else
	{
		enemySpeed =  lerp(enemySpeed, enemySpeedInitial, 0.1)
		farDist = 1;
		far = false;
	}
}

switch(state)
{
	case ENEMYSTATE.CHASING: Enemy_ChasingAnchored(); break;
	case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
}

//if instance_exists(lightEnemy)
//	{
//		lightEnemy.light [| eLight.X] = x
//		lightEnemy.light [| eLight.Y] = y
//	}

if (_hp <= 0) || !instance_exists(anchor)
{
	
	EnemyDeathShake();
	
	global.XPpoints +=enemyXP;
	
	explo = instance_create(x,y,o_explo2);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}