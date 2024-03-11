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