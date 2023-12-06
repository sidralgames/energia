// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossWormCreateTerrain()
{
	
	_x = x;
	_y = y;
		
	_x1 = x + lengthdir_x(25, 359);
	_y1 = y + lengthdir_y(25, 359);

	_x2 = x + lengthdir_x(25, 180);
	_y2 = y + lengthdir_y(25, 180);

	_x3 = x + lengthdir_x(25, 90);
	_y3 = y + lengthdir_y(25, 90);

	_x4 = x + lengthdir_x(25, 270);
	_y4 = y + lengthdir_y(25, 270);

	if (global.changingTiles = false)
	{
		if (global.wallgrid_[#(_x / 32), (_y / 32)] == FLOOR) && (_x > 60) && (_x < room_width - 60) &&
		(_y > 60) && (_y < room_height - 60)
		{
			tilemap_set_at_pixel(_tilemap_id, 0, _x, _y);
			global.wallgrid_[# _x / 32, _y / 32] = VOID;
			mp_grid_add_rectangle(gridRoom1, _x - 15, _y - 15, _x, _y)

		}
			
		if (global.wallgrid_[#(_x1 / 32), (_y1 / 32)] == FLOOR) && (_x1 > 60) && (_x1 < room_width - 60) &&
		(_y1 > 60) && (_y1 < room_height - 60)
		{
			tilemap_set_at_pixel(_tilemap_id, 0, _x1, _y1);
			global.wallgrid_[# _x1 / 32, _y1 / 32] = VOID;
			mp_grid_add_rectangle(gridRoom1, _x1 - 15, _y1 - 15, _x1, _y1)
		}
	
		if (global.wallgrid_[#(_x2 / 32), (_y2 / 32)] == FLOOR) && (_x2 > 60) && (_x2 < room_width - 60) &&
		(_y2 > 60) && (_y2 < room_height - 60)
		{
			tilemap_set_at_pixel(_tilemap_id, 0, _x2, _y2);
			global.wallgrid_[# _x2 / 32, _y2 / 32] = VOID;
			mp_grid_add_rectangle(gridRoom1, _x2 - 15, _y2 - 15, _x2, _y2)
		}
			
		if (global.wallgrid_[#(_x3 / 32), (_y3 / 32)] == FLOOR) && (_x3 > 60) && (_x3 < room_width - 60) &&
		(_y3 > 60) && (_y3 < room_height - 60)
		{
			tilemap_set_at_pixel(_tilemap_id, 0, _x3, _y3);
			global.wallgrid_[# _x3 / 32, _y3 / 32] = VOID;
			mp_grid_add_rectangle(gridRoom1, _x3 - 15, _y3 - 15, _x3, _y3)
		}
			
		if (global.wallgrid_[#(_x4 / 32), (_y4 / 32)] == FLOOR) && (_x4 > 60) && (_x4 < room_width - 60) &&
		(_y4 > 60) && (_y4 < room_height - 60)
		{
			tilemap_set_at_pixel(_tilemap_id, 0, _x4, _y4);
			global.wallgrid_[# _x4 / 32, _y4 / 32] = VOID;
			mp_grid_add_rectangle(gridRoom1, _x4 - 15, _y4 - 15, _x4, _y4)
		}
		
		global.changingTiles = true;
	}
}