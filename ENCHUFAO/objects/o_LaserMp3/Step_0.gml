/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

xConnectionDisp=x;
yConnectionDisp=y;
	
_angle = superGun._angle;
	
if (superGun.contToShoot <= 0)
{
	reseted = false;
	var maxLenght_ = 640;
	screenShake(1.1,5)
	gamepad_set_vibration(0,0.15, 0.15);
	
	for(var i = 0; i < maxLenght_; i++)
	{
		maxLenght=i;
	    var lx = x + lengthdir_x(i, _angle);
	    var ly = y + lengthdir_y(i, _angle);
		
		  collision = place_meeting(lx, ly, o_enemyP) 
		 || place_meeting(lx, ly, o_bulletPlayer_Bomb) || place_meeting(lx, ly, o_BossFather)
		 || place_meeting(lx, ly, o_enchufe_Mimic) || place_meeting(lx, ly, o_capsule_Mimic) || place_meeting(lx, ly, o_bombEnemyFather)
		 
		 collisionTile = tile_meeting(lx,ly,"Tiles");
		 
	     if (collision)
		 {
			 maxLenght_=i
			 maxLenght = maxLenght_;
			 thisLenght = maxLenght;
		}  
		
		if (collisionTile) && (room != Sala_Inicio)
		{
			 maxLenght_=i
			 maxLenght = maxLenght_;
			 thisLenght = maxLenght;
			 
			 var _tilemap_id = layer_tilemap_get_id("Tiles");

			 _x = x+lengthdir_x(maxLenght+random_range(5,20), _angle+random_range(5,-5))
			 _y = y+lengthdir_y(maxLenght+random_range(5,20), _angle+random_range(5,-5))
  
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
					met = instance_create_layer(_x+lengthdir_x(10, _angle),_y+lengthdir_y(10, _angle),"Meteors", o_meteor)
					if instance_exists(met)
					{
						met._hpush = lengthdir_x(velo,_angle)
						met._vpush = lengthdir_y(velo,_angle)
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

	bomb = collision_line(x,y,x+lengthdir_x(maxLenght_+20, _angle+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,_angle+random_range(2,-2)), o_bulletPlayer_Bomb,false, true)
	enemy = collision_line(x,y,x+lengthdir_x(maxLenght_+20, _angle+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,_angle+random_range(2,-2)), o_enemyP,false, true)
	
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
			instance_destroy(bomb)
		}
	}
}
else
{
	if (reseted = false)
	{
		reseted = true;
		
		drawflash = true;
		blueWidht = 20;
		whiteWidht = 8;
		blueW=50;
		whiteW=20;
		mp3laserWidth1 = 20;
		mp3laserWidth2 = 10;
		outRad = 20;
		inRad = 8;
	}
}


















