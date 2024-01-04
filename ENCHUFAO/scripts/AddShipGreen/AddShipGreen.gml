// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipGreen()
{
	ds_map_add(global.shipList, global.numberOfShips,
	{ 
		unlocked: global.shipGreenUnlocked,
		sprite: splayer,
		spriteLocked: splayer_Blue_Locked,
		position: 0,
		stat: "FULL EQUIPMENT"
		
	})
	global.numberOfShips +=1;
}