// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossWormMoveAndBreak()
{
	if (alarm[4] <= 0)
	{
		if (global.haveInvisibiltyCloak && global.invisibleCloak = true)
		{
			diffX = choose(random_range(-550, 550));
			diffY = choose(random_range(-550, 550));
			a = point_direction(x, y, o_playerShip.x + diffX, o_playerShip.y + diffY);
		}
		else
		{
			diffX = choose(random_range(150, room_width-150));
			diffY = choose(random_range(150, room_height-150));
			a = point_direction(x, y, diffX, diffY);
		}
		alarm[4] = random_range(30, 90)
	}

	direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
	_angle = direction;
	speed = enemySpeed * min(1, global.relativeSpeed + 0.2);

	_x = x + lengthdir_x(30, direction);
	_y = y + lengthdir_y(30, direction);

	_x2 = x + lengthdir_x(30, direction + 60)
	_y2 = y + lengthdir_y(30, direction + 60)

	_x3 = x + lengthdir_x(30, direction - 60)
	_y3 = y + lengthdir_y(30, direction - 60)


	if contBreak >= 0
	{
		enemySpeed = lerp(enemySpeed, enemySpeedCrunch, 0.08);
		contBreak--;
	}
	if contBreak <= 0
	{
		enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.05);
		canBreak = true;
	}

	if (global.inScreen)
	{
		if tile_meeting(_x, _y, "Tiles") && (canBreak)
		{
			if (global.wallgrid_[#(_x / 32), (_y / 32)] != FLOOR) && (_x > 40) && (_x < room_width - 40) &&
				(_y > 40) && (_y < room_height - 40)
				{
					tilemap_set_at_pixel(_tilemap_id, 0, _x, _y);

					global.changingTiles = true;
					velo = random_range(2, 2.5);
					global.wallgrid_[# _x / 32, _y / 32] = FLOOR
					mp_grid_clear_rectangle(gridRoom1, _x - 15, _y - 15, _x, _y)

					met = instance_create_layer(_x - lengthdir_x(5, direction), _y - lengthdir_y(5, direction), "Meteors", o_meteor)
					if instance_exists(met)
					{
						screenShake(1, 5)
						explo = instance_create(_x, _y, o_explo3)
						explo.image_xscale = 0.5;
						explo.image_yscale = 0.5;
						explo.image_alpha = 0.8;
						met._hpush = lengthdir_x(velo, direction)
						met._vpush = lengthdir_y(velo, direction)
					}
					canBreak = false;
					contBreak = 20;
				}
		}

		if tile_meeting(_x2, _y2, "Tiles") && (canBreak)
		{
			if (global.wallgrid_[#(_x2 / 32), (_y2 / 32)] != FLOOR) && (_x2 > 40) && (_x2 < room_width - 40) &&
				(_y2 > 40) && (_y2 < room_height - 40)
				{
					tilemap_set_at_pixel(_tilemap_id, 0, _x2, _y2);

					global.changingTiles = true;
					velo = random_range(2, 2.5);
					global.wallgrid_[# _x2 / 32, _y2 / 32] = FLOOR
					mp_grid_clear_rectangle(gridRoom1, _x2 - 15, _y2 - 15, _x2, _y2)

					met = instance_create_layer(_x2 - lengthdir_x(5, direction), _y2 - lengthdir_y(5, direction), "Meteors", o_meteor)
					if instance_exists(met)
					{
						//screenShake(1, 5)
						explo = instance_create(_x2, _y2, o_explo3)
						explo.image_xscale = 0.5;
						explo.image_yscale = 0.5;
						explo.image_alpha = 0.8;
						met._hpush = lengthdir_x(velo, direction)
						met._vpush = lengthdir_y(velo, direction)
					}
					canBreak = false;
					contBreak = 20;
				}
		}

		if tile_meeting(_x3, _y3, "Tiles") && (canBreak)
		{
			if (global.wallgrid_[#(_x3 / 32), (_y3 / 32)] != FLOOR) && (_x3 > 40) && (_x3 < room_width - 40) &&
				(_y3 > 40) && (_y3 < room_height - 40)
				{
					tilemap_set_at_pixel(_tilemap_id, 0, _x3, _y3);

					global.changingTiles = true;
					velo = random_range(2, 2.5);
					global.wallgrid_[# _x3 / 32, _y3 / 32] = FLOOR
					mp_grid_clear_rectangle(gridRoom1, _x3 - 15, _y3 - 15, _x3, _y3)

					met = instance_create_layer(_x3 - lengthdir_x(5, direction), _y3 - lengthdir_y(5, direction), "Meteors", o_meteor)
					if instance_exists(met)
					{
						//screenShake(1, 5)
						explo = instance_create(_x3, _y3, o_explo3)
						explo.image_xscale = 0.5;
						explo.image_yscale = 0.5;
						explo.image_alpha = 0.8;
						met._hpush = lengthdir_x(velo, direction)
						met._vpush = lengthdir_y(velo, direction)
					}
					canBreak = false;
					contBreak = 20;
				}
		}
	}
}