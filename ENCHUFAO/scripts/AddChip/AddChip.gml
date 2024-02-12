// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddChip(vert, obj)
{
ds_map_add(chipList, ds_map_size(chipList),
	{ 
		vert: vert,
		obj: obj,
		
	})
	
	global.chipsNumber+=1;
	o_cable.chipJustGrabbed = true;
}