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
	EnemyDeathShake();
	
	global.XPpoints +=enemyXP;
	
	explo = instance_create(x,y,o_exploPurple);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		
		enemyA = instance_create_layer(x, y, "Enemies", o_enemyMitosis_Son);
		enemyB = instance_create_layer(x, y, "Enemies", o_enemyMitosis_Son);
		
		if instance_exists(enemyA)
		{
			enemyA.hspeed = lengthdir_x(2, _angle-150)
			enemyA.vspeed = lengthdir_y(2, _angle-150)
		}
		
		if instance_exists(enemyB)
		{
			enemyB.hspeed = lengthdir_x(2, _angle-210)
			enemyB.vspeed = lengthdir_y(2, _angle-210)
		}
		
		if (isMegaEnemy)
		{
			enemyC = instance_create_layer(x, y, "Enemies", o_enemyMitosis_Son);
			
			if instance_exists(enemyC)
			{
				enemyC.hspeed = lengthdir_x(2, _angle-180)
				enemyC.vspeed = lengthdir_y(2, _angle-180)	
			}
		}
		
		instance_destroy();
	}
}
