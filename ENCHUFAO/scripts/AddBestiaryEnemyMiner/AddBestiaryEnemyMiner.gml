// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMiner()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Miner",
		sprite: s_enemyMines,
		number: 22,
		unlocked: global.bestiaryEnemyMinerUnlocked,
		textBestiary: "Slowly wanders around,\nplacing PROXIMITY BOMBS\nbehind them.",
		lines: 3,
		killsText: "KILLED: " + string(global.enemyMinerKills),
		killsNum: global.enemyMinerKills,
		killsToUnlock: 5,
		killedByText: "KILLED BY: " + string(global.enemyMinerKilledBy),
		killedByNum: global.enemyMinerKilledBy,
		group: "Bombers"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
