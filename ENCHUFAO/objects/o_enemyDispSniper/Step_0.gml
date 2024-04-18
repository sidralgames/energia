/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

switch(state)
{
	case ENEMYSTATE.WAITING: Enemy_Waiting(); break;
	case ENEMYSTATE.CHASING: Enemy_Chasing(); break;
	case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
}

checkChasing();

if (_hp <= 0)
{
	EnemyDeathShake();
	
	if instance_exists(o_playerShip)
	{
		global.XPpoints +=enemyXP;
	}
	
	explo = instance_create(x,y,o_exploPurple);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}

if instance_exists(o_playerShip)
{
	EnemySniperAimAndShoot();
}


