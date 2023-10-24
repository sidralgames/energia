// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeRecoverBullet()
{
ds_map_add(global.upgradesList, global.numberOfUpgrades,
	{ 
		isPicked: false,
		timesPicked: 0,
		unique: true,
		nameUpgrade: "Some Kills Regenerate Ammo",
		obj: o_enchufeUpgadeRecoverBullet,
		xx: 0,
		yy: 0,
		
	})

global.numberOfUpgrades +=1;
}