/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

if instance_exists(o_playerShip)
{
	switch(state)
	{
		case ENEMYSTATE.WAITING: EnemyShield_Waiting(); break;
		case ENEMYSTATE.CHASING: EnemyShield_Chasing(); break;
		case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
	}
}

checkChasing();

if (_hp <= 0)
{
	EnemyDeathShake();
	
	if instance_exists(o_playerShip)
	{
		global.XPpoints +=enemyXP;
	}
	
	explo = instance_create(x,y,o_explo2)
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	instance_destroy();
	if instance_exists(shield)
	{
		instance_destroy(shield)
	}

}