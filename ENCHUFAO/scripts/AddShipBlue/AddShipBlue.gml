// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipBlue()
{
	ds_map_add(global.shipList, global.numberOfShips,
	{ 
		unlocked: global.shipBlueUnlocked,
		sprite: splayer_Blue,
		spriteLocked: splayer_Blue_Locked,
		position: 1,
		
	})
	global.numberOfShips +=1;
}