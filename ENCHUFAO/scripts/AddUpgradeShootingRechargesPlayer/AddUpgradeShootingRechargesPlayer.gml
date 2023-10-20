// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeShootingRechargesPlayer()
{
ds_map_add(global.PlayerUpgradesList, global.numberOfUpgradesPlayer,
	{ 
		isPicked: false,
		times: 0,
		inStat: false,
		unique: true,
		nameUpgrade: "Shooting Recharges Energy",
		obj: o_enchufeUpgadeShootingRecharges,
		
	})

global.numberOfUpgradesPlayer +=1;
}