// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBomber()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Bombo",
		sprite: s_enemyBomber,
		number: 13,
		unlocked: global.bestiaryEnemyBomboUnlocked,
		textBestiary: "Yes, they shoot\nBOMBS\n \nTip: Shoot first :)",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyBomboKills),
		killsNum: global.enemyBomboKills,
		killsToUnlock: 8,
		killedByText: "KILLED BY: " + string(global.enemyBomboKilledBy),
		killedByNum: global.enemyBomboKilledBy,
		group: "Bombers"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
