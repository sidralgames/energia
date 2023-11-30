// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerShipLaser(argument0)
{
	alarm[4] = 10;
	if (global.laser > 0)
	{
		screenShake(2,10)
		gamepad_set_vibration(0,random_range(0.25, 0.35),random_range(0.25, 0.35));
		
		if (!global.infiniteLaserIsOn)
		{
			global.laser-=global.laserDrain;
		}
	}
	
	_angle+=random_range(1,-1);
	_hpush += -lengthdir_x(0.13, _angle);
	_vpush += -lengthdir_y(0.13, _angle);
	var maxLenght_ = 640;
	
	for(var i = 0; i < maxLenght_; i++)
	{
		maxLenght = i ;
	     var lx = x + lengthdir_x(i, argument0);
	     var ly = y + lengthdir_y(i, argument0);
		 
		 collision = tile_meeting(lx,ly,"Tiles") || place_meeting(lx, ly, o_enemyP) 
		 || place_meeting(lx, ly, o_bulletPlayer_Bomb) || place_meeting(lx, ly, o_BossFather)
		 || place_meeting(lx, ly, o_enchufe_Mimic) || place_meeting(lx, ly, o_bombEnemyFather)
		 
	     if (collision)
		 {
			 maxLenght_=i
			 maxLenght = maxLenght_;
			 thisLenght = maxLenght;
			 
			 var _tilemap_id = layer_tilemap_get_id("Tiles");

			 _x = x+lengthdir_x(maxLenght+random_range(5,20), argument0+random_range(5,-5))
			 _y = y+lengthdir_y(maxLenght+random_range(5,20), argument0+random_range(5,-5))
  
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
					mp_grid_clear_rectangle(gridRoom1, _x-15,_y-15,_x,_y)
					met = instance_create_layer(_x+lengthdir_x(10, argument0),_y+lengthdir_y(10, argument0),"Meteors", o_meteor)
					if instance_exists(met)
					{
						met._hpush = lengthdir_x(velo,argument0)
						met._vpush = lengthdir_y(velo,argument0)
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
	}

	boss = collision_line(x,y,x+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_BossMecha_Inside,false, true)
	if (boss)
	{
		screenShake(4,10);
		if (boss.isImmortal == false) 
		{
			boss.hp -= (0.25+global.laserDamage+(global.amplifyPowerLaser/2)) * global.damageDealt;
			boss.flashAlpha = 1;
			boss.burned = true;

		}
	}
	
	misil = collision_line(x,y,x+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_misil,false, true)
	if (misil)
	{
		instance_destroy(misil)	
	}
	
	mimic = collision_line(x,y,x+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_enchufe_Mimic,false, true)
	if (mimic)
	{
		mimic._hp -= (0.25+global.laserDamage+(global.amplifyPowerLaser/2)) * global.damageDealt;
		mimic.burned = true;
	}
	
	
	enemy = collision_line(x,y,x+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_enemyP,false, true)
	if (enemy)
	{
		if (enemy.isShield == false) && (enemy.state == ENEMYSTATE.WAITING)
		{
			enemy.state = ENEMYSTATE.CHASING;
		}
		
		screenShake(4,10);
		
		if (enemy.isShield == true) || (enemy.enemyIsMini == true)
		{
			enemy._hp -= (1.95+global.laserDamage+(global.amplifyPowerLaser/2)) * global.damageDealt;
		}
		else
		{
			if (enemy.haveAShield == false)
			{
				if (enemy.isWormHitBox)
				{
					with(enemy)
					{
						if instance_exists(worm)
						{
							worm._hp -= (0.25+global.laserDamage+(global.amplifyPowerLaser/2)) * global.damageDealt;
						}
					}
				}
				else
				{
					enemy._hp -= (0.25+global.laserDamage+(global.amplifyPowerLaser/2)) * global.damageDealt;
				}
			}
		}
		
		if (enemy.haveAShield == false)
		{
			enemy.flashAlpha = 1;
		
			if (global.laserBurnEnemies)
			{
				if (enemy.isShield == false) && (enemy.burned == false)
				{
					enemy.burned = true;	
				}
			}
		
			if (global.laserSlowEnemies)
			{
				with(enemy)
				{
					slowed = true;
					slowedCont = random_range(30,50);
				}
			
			}
		}
	}
	
	bombPlayer = collision_line(x,y,x+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_bulletPlayer_Bomb,false, true)
	if (bombPlayer)
	{
		screenShake(4,10);
		bombPlayer.hitByLaser = true;
		instance_destroy(bombPlayer);
	}
	
	bombEnemy = collision_line(x,y,x+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_bombEnemyFather,false, true)
	if (bombEnemy)
	{
		screenShake(4,10);
		bombEnemy.hitByLaser = true;
		instance_destroy(bombEnemy);
	}
}