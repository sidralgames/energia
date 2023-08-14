// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeSlowerDischargePlayer()
{
ds_map_add(global.PlayerUpgradesList, global.numberOfUpgradesPlayer,
	{ 
		isPicked: false,
		times: 0,
		unique: false,
		nameUpgrade: "Slower Discharge",
		obj: o_enchufeUpgadeDischarge,

		
	})

global.numberOfUpgradesPlayer +=1;
}