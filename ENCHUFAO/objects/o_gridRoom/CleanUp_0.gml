/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

mp_grid_clear_all(global.gridRoom1);

mp_grid_destroy(global.gridRoom1);

if ds_exists(global.wallgrid_,ds_type_grid)
{
	ds_grid_destroy(global.wallgrid_);
	global.wallgrid_ = -1;
}










