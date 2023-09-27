// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddShipMP3()
{
	ds_map_add(global.shipList, global.numberOfShips,
	{ 
		unlocked: global.shipMP3Unlocked,
		sprite: splayer_mp3,
		spriteLocked: splayer_mp3_locked,
		position: 5,
		stat: "ENCHUFES AMPLIFY"
		
	})
	global.numberOfShips +=1;
}