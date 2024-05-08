// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DeleteGridsFromMemory()
{
	if instance_exists(o_gridRoom)
	{
		mp_grid_clear_all(global.gridRoom1);
		mp_grid_destroy(global.gridRoom1);
		
		instance_destroy(o_gridRoom);
	}

	if ds_exists(global.wallgrid_,ds_type_grid)
	{
		ds_grid_destroy(global.wallgrid_);
		global.wallgrid_ = -1;
	}
}