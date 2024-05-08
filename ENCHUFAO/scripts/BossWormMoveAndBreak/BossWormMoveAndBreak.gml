 // Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossWormMoveAndBreak()
{
	if (onlyHead = false)
	{
		if (alarm[4] <= 0)
		{
			if (global.haveInvisibiltyCloak && global.invisibleCloak = true) || (global.inSmokeArea = true)
			{
				diffX = choose(random_range(150, room_width-150));
				diffY = choose(random_range(150, room_height-150));
				a = point_direction(x, y, diffX, diffY);
			}
			else
			{
				diffX = choose(random_range(150, room_width-150));
				diffY = choose(random_range(150, room_height-150));
				a = point_direction(x, y, diffX, diffY);
			}
			alarm[4] = random_range(30, 90)
		}
	}
	else
	{
		if (alarm[4] <= 0)
		{
			if (global.haveInvisibiltyCloak && global.invisibleCloak = true) || (global.inSmokeArea = true)
			{
				diffX = choose(random_range(150, room_width-150));
				diffY = choose(random_range(150, room_height-150));
				a = point_direction(x, y, diffX, diffY);
			}
			else
			{
				diffX = choose(random_range(250, room_width-250));
				diffY = choose(random_range(250, room_height-250));
				a = point_direction(x, y, diffX, diffY);
			}
			alarm[4] = random_range(30, 90)
		}
	}

	direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
	_angle = direction;
	speed = enemySpeed * min(1, global.relativeSpeed + 0.2);

	_x = x + lengthdir_x(30, direction);
	_y = y + lengthdir_y(30, direction);

	_x2 = x + lengthdir_x(50, direction + 60)
	_y2 = y + lengthdir_y(50, direction + 60)

	_x3 = x + lengthdir_x(50, direction - 60)
	_y3 = y + lengthdir_y(50, direction - 60)

	if (WormBoss = true)
	{
		if instance_exists(o_cable)
		{
			if (o_cable.bossWormConnection == true)
			{
				precision = precisionRide;
				enemySpeed = lerp(enemySpeed, enemySpeedRide, 0.09);
			}
			else
			{	
				precision = precisionInitial;
			
				if (contBreak >= 0)
				{
					enemySpeed = lerp(enemySpeed, enemySpeedCrunch, 0.08);
					contBreak--;
				}
	
				if (contBreak <= 0)
				{
					enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.05);
					canBreak = true;
				}
			}
		}
	}
	
	inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
	(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

	if (inScreen)
	{
		if tile_meeting(_x, _y, "Tiles") && (canBreak)
		{
			if (global.wallgrid_[#(_x / 32), (_y / 32)] != FLOOR) && (_x > 60) && (_x < room_width - 60) &&
				(_y > 60) && (_y < room_height - 60)
				{
					tilemap_set_at_pixel(_tilemap_id, 0, _x, _y);

					global.changingTiles = true;
					if instance_exists(o_mouthAnchor)
					{
						o_mouthAnchor.alarm[1] = 10;
					}
					velo = random_range(1, 2.5);
					global.wallgrid_[# _x / 32, _y / 32] = FLOOR
					mp_grid_clear_rectangle(global.gridRoom1, _x - 15, _y - 15, _x, _y)

					met = instance_create_layer(_x - lengthdir_x(5, direction), _y - lengthdir_y(5, direction), "Meteors", o_meteor)
					if instance_exists(met)
					{
						screenShake(1, 5)
						explo = instance_create(_x, _y, o_explo3)
						explo.image_xscale = 0.5;
						explo.image_yscale = 0.5;
						explo.image_alpha = 0.8;
						met._hpush = lengthdir_x(velo, random(360))
						met._vpush = lengthdir_y(velo, random(360))
					}
					canBreak = false;
					contBreak = 20;
				}
		}

		if tile_meeting(_x2, _y2, "Tiles") && (canBreak)
		{
			if (global.wallgrid_[#(_x2 / 32), (_y2 / 32)] != FLOOR) && (_x2 > 60) && (_x2 < room_width - 60) &&
				(_y2 > 60) && (_y2 < room_height - 60)
				{
					tilemap_set_at_pixel(_tilemap_id, 0, _x2, _y2);

					global.changingTiles = true;
					if instance_exists(o_mouthAnchor)
					{
						o_mouthAnchor.alarm[1] = 10;
					}
					velo = random_range(1, 2.5);
					global.wallgrid_[# _x2 / 32, _y2 / 32] = FLOOR
					mp_grid_clear_rectangle(global.gridRoom1, _x2 - 15, _y2 - 15, _x2, _y2)

					met = instance_create_layer(_x2 - lengthdir_x(5, direction), _y2 - lengthdir_y(5, direction), "Meteors", o_meteor)
					if instance_exists(met)
					{
						//screenShake(1, 5)
						explo = instance_create(_x2, _y2, o_explo3)
						explo.image_xscale = 0.5;
						explo.image_yscale = 0.5;
						explo.image_alpha = 0.8;
						met._hpush = lengthdir_x(velo, random(360))
						met._vpush = lengthdir_y(velo, random(360))
					}
					canBreak = false;
					contBreak = 20;
				}
		}

		if tile_meeting(_x3, _y3, "Tiles") && (canBreak)
		{
			if (global.wallgrid_[#(_x3 / 32), (_y3 / 32)] != FLOOR) && (_x3 > 60) && (_x3 < room_width - 60) &&
				(_y3 > 60) && (_y3 < room_height - 60)
				{
					tilemap_set_at_pixel(_tilemap_id, 0, _x3, _y3);

					global.changingTiles = true;
					if instance_exists(o_mouthAnchor)
					{
						o_mouthAnchor.alarm[1] = 10;
					}
					velo = random_range(1, 2.5);
					global.wallgrid_[# _x3 / 32, _y3 / 32] = FLOOR
					mp_grid_clear_rectangle(global.gridRoom1, _x3 - 15, _y3 - 15, _x3, _y3)

					met = instance_create_layer(_x3 - lengthdir_x(5, direction), _y3 - lengthdir_y(5, direction), "Meteors", o_meteor)
					if instance_exists(met)
					{
						//screenShake(1, 5)
						explo = instance_create(_x3, _y3, o_explo3)
						explo.image_xscale = 0.5;
						explo.image_yscale = 0.5;
						explo.image_alpha = 0.8;
						met._hpush = lengthdir_x(velo, random(360))
						met._vpush = lengthdir_y(velo, random(360))
					}
					canBreak = false;
					contBreak = 20;
				}
		}
	}
	if (WormBoss)
	{
		if !instance_exists(o_BossWorm_Body) && (onlyHead = false)
		{
			if (global.BossWormHP <= headHp) && (regainHP = false)
			{
				global.BossWormHP+=5;
			}
			if (global.BossWormHP >= headHp)
			{
				global.BossWormHP = headHp;
				_hp = headHp;
				regainHP = true;
				onlyHead = true;
			}
		}
	
		if (onlyHead)
		{
			global.BossWormHP = _hp;
			enemySpeed = lerp(enemySpeed, enemySpeedRide+0.5, 0.09);
			part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(18,direction), y-lengthdir_y(18,direction), global.naveEnemy_Waiting , 1)
			precision = precisionRide;
			
			BossWorm_OnlyHead_Terraform();
			BossWorm_OnlyHeadAttack_Back();
			
			if exploded = false && (global.BossWormHP <= 30)
			{
				image_speed = 0;
				image_index = 1;
				exploded = true;
				explo = instance_create(x-lengthdir_x(30, image_angle),y-lengthdir_x(30, image_angle),o_explo1);
				explo.image_xscale = 0.7;
				explo.image_yscale = 0.7;
			}
		
		}
	}
	
}