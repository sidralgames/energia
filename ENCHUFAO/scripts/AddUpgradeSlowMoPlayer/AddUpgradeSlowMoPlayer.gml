// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeSlowMoPlayer()
{
ds_map_add(global.PlayerUpgradesList, global.numberOfUpgradesPlayer,
	{ 
		isPicked: false,
		times: 0,
		unique: false,
		nameUpgrade: "Increased Slow Motion Max",
		obj: o_enchufeUpgadeSlowMo,

		
	})

global.numberOfUpgradesPlayer +=1;
}