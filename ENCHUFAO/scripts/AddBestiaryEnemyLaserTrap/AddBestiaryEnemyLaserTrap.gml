// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyLaserTrap()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "LaserTrap",
		sprite: s_laserEnemy,
		number: 24,
		unlocked: global.bestiaryEnemyLaserTrapUnlocked,
		textBestiary: "Deadly LASER that\ncan be used\nin your favour.\n \nDO NOT LOOK DIRECTLY",
		lines: 5,
		killsText: "KILLED: " + string(global.enemyLaserTrapKills),
		killsNum: global.enemyLaserTrapKills,
		killsToUnlock: 15,
		killedByText: "KILLED BY: " + string(global.enemyLaserTrapKilledBy),
		killedByNum: global.enemyLaserTrapKilledBy,
		group: "Lasers"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
