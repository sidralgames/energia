/// @description Insert description here
// You can write your code in this editor
event_inherited();
checkHPEnemies();

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



if (_hp <= 0)
{
	EnemyDeathShake();
	
	if instance_exists(o_playerShip)
	{
		global.XPpoints +=enemyXP;
	}
	
	explo = instance_create(x,y,o_explo2);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}

if instance_exists(o_playerShip)
{
	if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 300) && ((global.invisibleCloak == false) && (global.inSmokeArea = false))
	{
		dire = direction;
		if (alarm[0] <= 0)
		{
			audio_play_sound_on(global.audioEmitter,snd_shoot1, false, 80,,,random_range(0.8,1))
			var bullet = instance_create_layer(x + lengthdir_x(20, dire), y + lengthdir_y(20, dire),
			"Bullets", o_bulletEnemy);
			off =  random_range(5,-5)
			bullet.bulletSpeed = 3;
			bullet.image_angle = dire+off;
			bullet.direction = dire+off;
			
			alarm[0] = random_range(60,120)
		}
	}
}


