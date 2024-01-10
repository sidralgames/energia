// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeHomingPlusBombPlayer()
{
ds_map_add(global.PlayerUpgradesList, global.numberOfUpgradesPlayer,
	{ 
		isPicked: false,
		times: 0,
		inStat: false,
		unique: true,
		nameUpgrade: "4 Extra Homing Missiles",
		obj: o_enchufeUpgadeHomingBomb_Plus,
		
	})

global.numberOfUpgradesPlayer +=1;
}