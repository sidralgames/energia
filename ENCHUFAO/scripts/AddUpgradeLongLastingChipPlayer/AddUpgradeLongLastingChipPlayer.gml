// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeLongLastingChipPlayer()
{
ds_map_add(global.PlayerUpgradesList, global.numberOfUpgradesPlayer,
	{ 
		isPicked: false,
		times: 0,
		inStat: false,
		unique: true,
		nameUpgrade: "Long Lasting Chips",
		obj: o_enchufeUpgadeLongLastingChip,
	})

global.numberOfUpgradesPlayer +=1;
}