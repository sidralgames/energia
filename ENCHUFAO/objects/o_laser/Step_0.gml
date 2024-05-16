/// @description Insert description here
// You can write your code in this editor
CheckInScreen(50, 5);

if (inScreen)
{
	if !tile_meeting(x,y,"Tiles")
	{
		instance_destroy();
	}
}

if (canShot)
{
	switch(face)
	{
		case 0:
		{
			colPlayer = collision_rectangle(x-2,y,x+2,y-16-long*image_yscale,o_playerShip,false,true)
			colEnemy = collision_rectangle(x-2,y,x+2,y-16-long*image_yscale,o_enemyP,false,true)
			colLaser = collision_rectangle(x-2,y,x+2,y-26-long*image_yscale,o_laser,false,true)
			
			if ( ((colPlayer) && (global.invisibleCloak == false) && (global.inSmokeArea == false)) || (colEnemy) )
			 && (colLaser) && (laserActive = false) 
			{
		
				laserActive = true;
				if (inScreen) || (colLaser.inScreen)
				{
					sndActivating = audio_play_sound_on(global.audioEmitter, snd_laserActivating, false, 50)
				}
				alarm[0] = 25;
			}
			if (laserActive = true) && (alarm[1] > 0) && (colLaser)
			{
				if collision_line(x,y,x, y-16-long*image_yscale, o_playerShip,false, true) 
				{
					if (o_playerShip.tocado == false)
					{
						gamepad_set_vibration(0,0.3,0.3);
						
						o_playerShip.alarm[4] = 10;
						o_playerShip.alarm[1] = 30;
						o_playerShip.tocado = true;
						
						if (global.shields > 0)
						{
							global.shields-=1;	
						}
						else
						{
							audio_play_sound_on(global.audioEmitter, snd_hit, false, 50);
							global.hp -=1 * global.damageReceived;
							
							if (global.hp <= 0)
							{
								global.numEnemyKilledBy = global.enemyLasertrapBestiaryNumber;
							}
						}
						
						screenShake(4,30);
					}
				}
		
				enemy = collision_rectangle(x-2,y,x+2, y-16-long*image_yscale, o_enemyP,false, true)
				bullet = collision_rectangle(x-5,y,x+5, y-16-long*image_yscale, o_bulletFather,false, true)
				
				if (enemy)
				{
					if (enemy.affectedByLaserTrap = true)
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
		break;
		case 1:
		{
			colPlayer = collision_rectangle(x+2,y+2,x-16-long,y-2,o_playerShip,false,true)
			colEnemy = collision_rectangle(x+2,y+2,x-16-long,y-2,o_enemyP,false,true)
			colLaser = collision_rectangle(x+2,y+2,x-16-long,y-2,o_laser,false,true)
			
			if ( ((colPlayer) && (global.invisibleCloak == false) && (global.inSmokeArea == false)) || (colEnemy) )
			 && (colLaser) && (laserActive = false) 
			{
		
				laserActive = true;
			
				if (inScreen) || (colLaser.inScreen)
				{
					sndActivating = audio_play_sound_on(global.audioEmitter, snd_laserActivating, false, 50)
				}
				alarm[0] = 25;
			}
			if (laserActive = true) && (alarm[1] > 0) && (colLaser)
			{
				if collision_line(x,y,x-16-long,y, o_playerShip,false, true) 
				{
					if (o_playerShip.tocado == false)
					{
						gamepad_set_vibration(0,0.3,0.3);
						
						o_playerShip.alarm[4] = 10;
						o_playerShip.alarm[1] = 30;
						o_playerShip.tocado = true;
						
						if (global.shields > 0)
						{
							global.shields-=1;	
						}
						else
						{
							audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
							global.hp -=1 * global.damageReceived;
							
							if (global.hp <= 0)
							{
								global.numEnemyKilledBy = global.enemyLasertrapBestiaryNumber;
							}
						}
						
						screenShake(4,30);
					}
				}
		
				enemy = collision_rectangle(x+2,y+2,x-16-long,y-2,o_enemyP,false,true)
				bullet = collision_rectangle(x+2,y+2,x-16-long,y-2,o_bulletFather,false,true)
				
				if (enemy)
				{
					if (enemy.affectedByLaserTrap = true)
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
		break;
	}
}





	