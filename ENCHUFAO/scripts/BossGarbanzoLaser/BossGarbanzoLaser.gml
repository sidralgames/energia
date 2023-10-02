// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoLaser(argument0, argument1, argument2)
{
	var maxLenght_ = 640;
	for(var i = 0; i < maxLenght_; i++)
	{
		maxLenght = i ;
	     var lx = x + lengthdir_x(i, argument0);
	     var ly = y + lengthdir_y(i, argument0);
	 
	     if tile_meeting(lx,ly,"Tiles") || place_meeting(lx, ly, o_playerShip)
		 {
			 maxLenght_=i
			 maxLenght = maxLenght_;
			 thisLenght = maxLenght;
			 
			 var _tilemap_id = layer_tilemap_get_id("Tiles");
			 
			 _x = x-argument1+lengthdir_x(maxLenght+random_range(5,20), argument0+random_range(5,-5))
			 _y = y+argument2+lengthdir_y(maxLenght+random_range(5,20), argument0+random_range(5,-5))
  
			 if (global.wallgrid_[# (_x/32), (_y/32)] = WALL) && (_x > 40) && (_x < room_width-40)
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
					met = instance_create_layer(_x+lengthdir_x(10, 280),_y+lengthdir_y(10, 280),"Meteors", o_meteor)
					if instance_exists(met)
					{
						met._hpush = lengthdir_x(velo,280)
						met._vpush = lengthdir_y(velo,280)
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
	
	player = collision_line(x+argument1,y+argument2,x+argument1+lengthdir_x(maxLenght_+20, argument0+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,argument0+random_range(2,-2)), o_playerShip,false, true)

	if (player)
	{
		with (o_playerShip)
		{
			if (tocado = false)
			{
				gamepad_set_vibration(0,0.3,0.3);
				alarm[4] = 10;
				audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
				alarm[1] = 50
				tocado = true;
				global.hp -=1;
				screenShake(4,30)
				global.hitsTaken+=1;
			}
		}
	}
}