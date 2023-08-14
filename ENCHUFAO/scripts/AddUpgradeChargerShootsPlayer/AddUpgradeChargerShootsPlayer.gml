// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeChargerShootsPlayer()
{
ds_map_add(global.PlayerUpgradesList, global.numberOfUpgradesPlayer,
	{ 
		isPicked: false,
		times: 0,
		unique: true,
		nameUpgrade: "Charger Shoots",
		obj: o_enchufeUpgadeChargerShoots,
	})

global.numberOfUpgradesPlayer +=1;
}