// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ActivateAndDestroy()
{
	instance_activate_all();
	
	instance_destroy(o_pause);
	
	if instance_exists(o_gridRoom)
	{
		mp_grid_clear_all(global.gridRoom1);

		mp_grid_destroy(global.gridRoom1);

		if ds_exists(global.wallgrid_,ds_type_grid)
		{
			ds_grid_destroy(global.wallgrid_);
			global.wallgrid_ = -1;
		}
	
		instance_destroy(o_gridRoom);
	}
	
	with(o_torreta)
	{
		killedByPlayer = false;	
	}
	
	with(o_laser)
	{
		killedByPlayer = false;	
	}
	
	with(all)
	{
		instance_destroy();	
	}
	
	var lay_id = layer_get_id("Tiles");
	var tile_id = layer_tilemap_get_id(lay_id);
	
	if (layer_tilemap_exists(lay_id, tile_id))
	{
	    layer_tilemap_destroy(tile_id);
	}
}