/// @description Insert description here
// You can write your code in this editor

mp_grid_clear_all(gridRoom1);
if ds_exists(gridRoom1,ds_type_map)
{
	mp_grid_destroy(gridRoom1);
}

if ds_exists(global.wallgrid_,ds_type_grid)
{
	ds_grid_destroy(global.wallgrid_);
}


