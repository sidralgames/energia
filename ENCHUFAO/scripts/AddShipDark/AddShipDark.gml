// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipDark()
{
	ds_map_add(global.shipList, global.numberOfShips,
	{ 
		unlocked: global.shipDarkUnlocked,
		sprite: splayer_Dark,
		spriteLocked: splayer_Dark_Locked,
		position: 3,
		stat: "ENEMIES HAVE -1 HP"
		
	})
	global.numberOfShips +=1;
}