// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddMegaUpgradePeta()
{
	ds_map_add(global.megaUpgradesList, global.numberOfMegaUpgrades,
	{ 
		isPicked: false,
		timesPicked: 0,
		unique: true,
		nameUpgrade: "All P.E.T.As are Multi-P.E.T.As",
		infoUpgrade: "P.E.T.As recharge EVERYTHING",
		obj: o_enchufeMegaUpgrade_Petas,
		canShowUp: true,
		xx: 0,
		yy: 0,
		
	})

global.numberOfMegaUpgrades +=1;
}