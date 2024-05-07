/// @description Insert description here
// You can write your code in this editor
if ds_exists(global.wallgrid_,ds_type_grid)
{
	ds_grid_destroy(global.wallgrid_);
	global.wallgrid_ = -1;
}