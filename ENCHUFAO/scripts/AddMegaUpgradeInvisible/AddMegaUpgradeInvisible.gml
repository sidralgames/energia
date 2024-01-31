// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddMegaUpgradeInvisible()
{
	ds_map_add(global.megaUpgradesList, global.numberOfMegaUpgrades,
	{ 
		isPicked: false,
		timesPicked: 0,
		unique: true,
		nameUpgrade: "Invisibility",
		infoUpgrade: "Invisibility",
		obj: o_enchufeUpgadeSlowMo,
		canShowUp: true,
		xx: 0,
		yy: 0,
		
	})

global.numberOfMegaUpgrades +=1;
}