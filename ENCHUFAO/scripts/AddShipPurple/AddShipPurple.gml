// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipPurple()
{
	ds_map_add(global.shipList, global.numberOfShips,
	{ 
		unlocked: global.shipPurpleUnlocked,
		sprite: splayer_Purple,
		spriteLocked: splayer_Purple_Locked,
		position: 4,
		stat: "FAST DURING SLOWMO"
		
	})
	global.numberOfShips +=1;
}