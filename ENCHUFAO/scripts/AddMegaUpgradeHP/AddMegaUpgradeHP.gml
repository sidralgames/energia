// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddMegaUpgradeHP()
{
	ds_map_add(global.megaUpgradesList, global.numberOfMegaUpgrades,
	{ 
		isPicked: false,
		timesPicked: 0,
		unique: true,
		nameUpgrade: "GAIN 2 HP and 2 HP Max CAPACITY",
		infoUpgrade: "GAIN 2 HP and 2 HP Max CAPACITY",
		obj: o_enchufeMegaUpgrade_HP,
		canShowUp: true,
		xx: 0,
		yy: 0,
		
	})

global.numberOfMegaUpgrades +=1;
}