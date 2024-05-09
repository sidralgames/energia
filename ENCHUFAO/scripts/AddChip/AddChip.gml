// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddChip(vert, obj)
{
ds_map_add(global.chipList, ds_map_size(global.chipList),
	{ 
		vert: vert,
		obj: obj,
		
	})
	
	
	o_cable.chipJustGrabbed = true;
}