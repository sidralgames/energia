// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyPincher()
{
	ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Pincher",
		sprite: s_enemyMouth,
		number: 11,
		unlocked: global.bestiaryEnemyPincherUnlocked,
		textBestiary: "This MINITHREATS\nhave evolved to\nmimic the environmen \nin a SYMBIOTIC relationship",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyPincherKills),
		killsNum: global.enemyPincherKills,
		killsToUnlock: 8,
		killedByText: "KILLED BY: " + string(global.enemyPincherKilledBy),
		killedByNum: global.enemyPincherKilledBy,
		group: "WallMouth"
	})

	global.numberOfEnemiesBestiary +=1;
}
