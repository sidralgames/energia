// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyPincher()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Pincher",
		keyKilledBy :"pincherKilledBy",
		sprite: s_enemyMouth,
		number: 11,
		unlocked: global.bestiaryEnemyPincherUnlocked,
		textBestiary: "This Minithreats\nhave evolved to\nMIMIC the environment\nin a SYMBIOTIC relationship.",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyPincherKills),
		killsNum: global.enemyPincherKills,
		killsToUnlock: 25,
		killedByText: "KILLED BY: " + string(global.enemyPincherKilledBy),
		killedByNum: global.enemyPincherKilledBy,
		group: "WallMouth"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
