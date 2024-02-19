// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddMegaUpgradeExternalBattery()
{
	ds_map_add(global.megaUpgradesList, global.numberOfMegaUpgrades,
	{ 
		isPicked: false,
		timesPicked: 0,
		unique: true,
		nameUpgrade: "External Battery",
		infoUpgrade: "FULL & INFINITE Energy, Ammo and Laser \n FOR 8 SECONDS by pressing circle (once per level)",
		obj: o_enchufeMegaUpgrade_ExternalBattery,
		canShowUp: true,
		xx: 0,
		yy: 0,
		
	})

global.numberOfMegaUpgrades +=1;
}