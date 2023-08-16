// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeAmmoPlayer()
{
ds_map_add(global.PlayerUpgradesList, global.numberOfUpgradesPlayer,
	{ 
		isPicked: false,
		times: 0,
		inStat: true,
		unique: false,
		nameUpgrade: "Increased Ammo Max",
		obj: o_enchufeUpgadeAmmo,
	})

global.numberOfUpgradesPlayer +=1;
}