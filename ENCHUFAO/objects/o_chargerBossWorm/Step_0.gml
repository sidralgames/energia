/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

_x = x + lengthdir_x(30, image_angle);
_y = y + lengthdir_y(30, image_angle);
if (global.changingTiles = false)
{
	if (global.wallgrid_[#(_x / 32), (_y / 32)] == FLOOR) && (_x > 40) && (_x < room_width - 40) &&
	(_y > 40) && (_y < room_height - 40)
	{
		tilemap_set_at_pixel(_tilemap_id, 0, _x, _y);
		global.changingTiles = true;
		global.wallgrid_[# _x / 32, _y / 32] = VOID

	
		mp_grid_add_rectangle(gridRoom1, _x - 15, _y - 15, _x, _y)
		global.changingTiles = true;
	}
}
