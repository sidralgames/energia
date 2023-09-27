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
		 
	     if tile_meeting(lx,ly,"Tiles") || place_meeting(lx, ly, o_enemyP)
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
				contExploTile+=1.3;
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
	
	grappleX = lx;
	grappleY = ly;
	
	enemy = collision_line(x,y,x+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_enemyP,false, true)
	if (enemy)
	{
		screenShake(4,10);
		enemy._hp -=(0.25+global.laserDamage+(global.amplifyPowerLaser/2));
		enemy.flashAlpha = 1;
		//explo = instance_create(enemy.x, enemy.y, o_explo2)
		//explo.image_xscale = 0.25;
		//explo.image_yscale = 0.25;
	}
}