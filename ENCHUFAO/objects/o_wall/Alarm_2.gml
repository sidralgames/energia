/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
der = collision_line(x,y,x+40,y+1, o_wall, false, true);
izq = collision_line(x,y,x-40,y+1, o_wall, false, true);
abj = collision_line(x,y,x+1,y+40, o_wall, false, true);
arr = collision_line(x,y,x+1,y-40, o_wall, false, true);

if (!der) && (!izq) && (!arr) && (!abj)
{
	if collision_circle(x,y,40, o_wall, false, true)	
	{
		var _tilemap_id = layer_tilemap_get_id("Tiles");
		
		tilemap_set_at_pixel(_tilemap_id, 0, x, y);
		
		global.wallgrid_[# x/32, y/32] = FLOOR;
		
		mp_grid_clear_rectangle(gridRoom1, x-15,y-15,x,y)
		
		instance_destroy();
	}
}




