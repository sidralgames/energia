/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_shipSelector)
{

		ship = ds_map_find_value(global.shipList, o_shipSelector.selected)
	

		if (_visible = true) && (ship.unlocked = 1)
		{
			for (var i = 0; i <= global.ammoStat-1; i++)
			{
				draw_sprite(sprite_index, 0, (x + 15*i), y)	
			}
		}
		else if (_visible = true) && (ship.unlocked = 0)
		{
			for (var i = 0; i <= 4; i++)
			{
				draw_sprite(s_indivStatLocked, 0, (x + 16*i), y)	
			}
		}
	

}



