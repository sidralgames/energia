/// @description Insert description here
// You can write your code in this editor
event_inherited();


if (megaStated = false)
{
	megaStated = true;
	
		if (isMega = 0)
		{
			sprite_index = s_enemySegments_Mega;
			isMegaEnemy = true;
			cable = instance_create_layer(x,y,"Enemies", o_enemySegments_Mega_Body);
			_hp = cable._segments*5;
			enemySpeedInitial = random_range(1.15,1.5)
			enemySpeed = enemySpeedInitial;
		}
		else
		{
			cable = instance_create_layer(x,y,"Enemies", o_enemySegments_Body);
			_hp = cable._segments*3;
			enemySpeedInitial = random_range(1.25,2)
			enemySpeed = enemySpeedInitial;
		}


}


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
	
	explo = instance_create(x,y,o_explo2);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}