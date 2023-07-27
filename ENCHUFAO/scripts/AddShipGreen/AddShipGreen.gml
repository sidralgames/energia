// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipGreen()
{
	ds_map_add(global.shipList, global.numberOfShips,
	{ 
		locked: false,
		sprite: splayer,
		spriteLocked: splayer_Blue_Locked,
		position: 0,
		
	})
	global.numberOfShips +=1;
}