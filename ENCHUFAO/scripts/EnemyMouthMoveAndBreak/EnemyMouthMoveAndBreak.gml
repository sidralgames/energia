// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemyMouthMoveAndBreak()
{
	if (alarm[4] <= 0)
		{
			if (global.haveInvisibiltyCloak && global.invisibleCloak = true)
			{
				diffX = choose(random_range(-250, 250));
				diffY = choose(random_range(-250, 250));
				 a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
			}
			else
			{
				diffX = choose(random_range(-150, 150));
				diffY = choose(random_range(-150, 150));
				a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
			}
			alarm[4] = random_range(30, 90)
		}

		
		direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
		_angle = direction;
		speed = enemySpeed * min(1, global.relativeSpeed+0.2);
		
		_x = x+lengthdir_x(20,direction);
		_y = y+lengthdir_y(20,direction);
		
		if contBreak>= 0
		{
			contBreak --;
		}
		if contBreak <=0
		{
			canBreak = true;	
		}
		
		inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
		(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

		if (inScreen)
		{
			if tile_meeting(_x,_y,"Tiles") && (canBreak)
			{
				enemySpeed = lerp(enemySpeed, enemySpeedCrunch, 0.08);
				
				if (global.wallgrid_[# (_x/32), (_y/32)] != FLOOR) && (_x > 40) && (_x < room_width-40)
				 && (_y > 40) && (_y < room_height-40)
				 {
					tilemap_set_at_pixel(_tilemap_id, 0, _x, _y);
			
					global.changingTiles = true;
					velo = random_range(0.75,1.5);
					global.wallgrid_[# _x/32, _y/32] = FLOOR
					mp_grid_clear_rectangle(gridRoom1, _x-15,_y-15,_x,_y)
			
					met = instance_create_layer(_x-lengthdir_x(5, direction),_y-lengthdir_y(5, direction),"Meteors", o_meteor)
					if instance_exists(met)
					{
						screenShake(1,7)
						explo = instance_create(_x,_y,o_explo3)
						explo.image_xscale = 0.5;
						explo.image_yscale = 0.5;
						explo.image_alpha = 0.8;
						met._hpush = lengthdir_x(velo,irandom(360))
						met._vpush = lengthdir_y(velo,irandom(360))
					}
			
					canBreak = false;
					contBreak = 20;
				}
			}
			else
			{
				enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.05);
			}
		}
}