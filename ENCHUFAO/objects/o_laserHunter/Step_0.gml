/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_BossHunter)
{
	x = o_BossHunter.laserXPos;
	y = o_BossHunter.laserYPos;
	angleLaser = o_BossHunter._angle;
	
if (o_BossHunter.isShootingLaser)
{
	if (!audio_is_playing(soundLaser)) && (lasersounding = false)
		{
			audio_stop_sound(soundLaser);
			audio_stop_sound(soundCharge);
			audio_play_sound_on(global.audioEmitter, snd_laserShoot, false, 50);
			lasersounding = true;
			audio_sound_gain(soundLaser, 1, 0);
			soundLaser = audio_play_sound_on(global.audioEmitter, snd_laserActive, true, 50);
			
		}
	
	
	var maxLenght_ = 600;
	
	screenShake(2,10);
	
	gamepad_set_vibration(0,0.2, 0.2);
	
	for(var i = 0; i < maxLenght_; i += 10)
	{
		maxLenght=i;
	     var lx = x + lengthdir_x(i, angleLaser);
	     var ly = y + lengthdir_y(i, angleLaser);
		 
	     if tile_meeting(lx,ly,"Tiles") || place_meeting(lx, ly, o_playerShip)
		 {
			 maxLenght_=i
			 maxLenght = maxLenght_;
				
		}
			
	}
	collisionTile = tile_meeting(lx,ly,"Tiles");
	if (collisionTile) && (room != Sala_Inicio)
		{
			 maxLenght_=i
			 maxLenght = maxLenght_;
			 thisLenght = maxLenght;
			 
			 var _tilemap_id = layer_tilemap_get_id("Tiles");

			 _x = x+lengthdir_x(maxLenght+random_range(5,20), angleLaser+random_range(5,-5))
			 _y = y+lengthdir_y(maxLenght+random_range(5,20), angleLaser+random_range(5,-5))
  
			 if (global.wallgrid_[# (_x/32), (_y/32)] != FLOOR) && (_x > 40) && (_x < room_width-40)
			 && (_y > 40) && (_y < room_height-40)
			 {
				contExploTile+=1.3 * global.damageDealt;///Trying, maybe too powerfull
				if (contExploTile >=35)
				{
					tilemap_set_at_pixel(_tilemap_id, 0, _x, _y);
					contExploTile = 0;
					global.changingTiles = true;
					velo = random_range(1,1.5);
					global.wallgrid_[# _x/32, _y/32] = FLOOR
					mp_grid_clear_rectangle(global.gridRoom1, _x-15,_y-15,_x,_y)
					met = instance_create_layer(_x+lengthdir_x(10, angleLaser),_y+lengthdir_y(10, angleLaser),"Meteors", o_meteor)
					if instance_exists(met)
					{
						met._hpush = lengthdir_x(velo,angleLaser)
						met._vpush = lengthdir_y(velo,angleLaser)
					}
				}
			 }
			 else
			 {
				 if (contExploTile > 0)
				 {
					 contExploTile -= 0.05;
				 }
			 }

		}

		player = collision_line(x,y,x+lengthdir_x(maxLenght_+10, angleLaser+random_range(1,-1)), y+lengthdir_y(maxLenght_+10,angleLaser+random_range(1,-1)), o_playerShip,false, true)
		bomb = collision_line(x,y,x+lengthdir_x(maxLenght_+20, angleLaser+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,angleLaser+random_range(2,-2)), o_bulletPlayer_Bomb,false, true)
		enemy = collision_line(x,y,x+lengthdir_x(maxLenght_+20, angleLaser+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,angleLaser+random_range(2,-2)), o_enemyP,false, true)
	
		if instance_exists(enemy)
		{
			if (enemy)
			{
				screenShake(4,10);
				if (enemy.isShield == true) || (enemy.enemyIsMini == true)
				{
					enemy._hp -=(1.95+global.laserDamage+(global.amplifyPowerLaser/2));
				}
				else
				{
					enemy._hp -=(0.25+global.laserDamage+(global.amplifyPowerLaser/2));
				}
				enemy.flashAlpha = 1;
			}
		}
		
		if instance_exists(bomb)
		{
			if (bomb)
			{	
				bomb.hitByLaser = true;
				instance_destroy(bomb);
			}
		}
	
		if instance_exists(player)
		{
			if (player)
			{
				with (o_playerShip)
				{
					if (tocado = false)
					{
						gamepad_set_vibration(0,0.3,0.3);
						alarm[4] = 10;
						alarm[1] = 50
						tocado = true;
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
								global.numEnemyKilledBy = global.enemyBossCrusherBestiaryNumber;
							}
						}
						
						screenShake(4,30);
						
						global.hitsTaken+=1;
					}
				}
			}
		}
	}
	else
	{
		if (!audio_is_playing(soundCharge)) && (chargingLaser = false)
		{
			chargingLaser = true;
			soundCharge = audio_play_sound_on(global.audioEmitter, snd_laserActivating, false, 50);
		}
	}

}
else
{
	instance_destroy();
}




