// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeLaser()
{
ds_map_add(global.upgradesList, global.numberOfUpgrades,
	{ 
		isPicked: false,
		timesPicked: 0,
		unique: false,
		nameUpgrade: "Better Laser",
		obj: o_enchufeUpgadeLaser,
		xx: 0,
		yy: 0,
		
	})

global.numberOfUpgrades +=1;
}