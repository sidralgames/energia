/// @description Insert description here
// You can write your code in this editor
if (global.changingTiles)
{
	if !tile_meeting(x,y,"Tiles")
	{
		instance_destroy();
	}
}
if (canShot)
{
	colPlayer = collision_rectangle(x-2,y,x+2,y-16-long*image_yscale,o_playerShip,false,true)
	colEnemy = collision_rectangle(x-2,y,x+2,y-16-long*image_yscale,o_enemyP,false,true)
	colLaser = collision_rectangle(x-2,y,x+2,y-26-long*image_yscale,o_laser,false,true)
	if ( ((colPlayer) && (global.invisibleCloak == false)) || (colEnemy) )
	 && (colLaser) && (laserActive = false) 
	{
		
		laserActive = true;
		alarm[0] = 25;
	}
	if (laserActive = true) && (alarm[1] > 0) && (colLaser)
	{
	
		//if instance_exists(lightLaser)
		//{
		//	lightLaser.light [| eLight.Direction] = 90;
		//	lightLaser.light [| eLight.Intensity] = random_range(20,50);
		//	lightLaser.light [| eLight.Width] = random_range(10,15);
		//	if (long > 50)
		//	{
		//		lightLaser.light [| eLight.Range] = long/1.5;
		//	}
		//	else
		//	{
		//		lightLaser.light [| eLight.Range] = long;
		//	}
		//}
		
		if collision_line(x,y,x, y-16-long*image_yscale, o_playerShip,false, true) 
		{
			if o_playerShip.tocado=false
			{
				gamepad_set_vibration(0,0.3,0.3);
				o_playerShip.alarm[4] = 10;
				o_playerShip.alarm[1] = 30
				o_playerShip.tocado = true;
				if (global.shields > 0)
				{
					global.shields-=1;	
				}
				else
				{
					audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
					global.hp -=1 * global.damageReceived;
				}
				screenShake(4,30)
			}
		}
		
		enemy = collision_rectangle(x-2,y,x+2, y-16-long*image_yscale, o_enemyP,false, true)
		bullet = collision_rectangle(x-5,y,x+5, y-16-long*image_yscale, o_bulletFather,false, true)
		if (enemy)
		{
			if (enemy.isImmortal = false)
			{
				enemy._hp = 0;
			}
		}
		if (bullet)
		{
			instance_destroy(bullet)
		}
	}
}





	