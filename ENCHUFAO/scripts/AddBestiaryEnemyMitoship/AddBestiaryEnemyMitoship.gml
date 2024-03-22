// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMitoship()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Mitoship",
		sprite: s_enemyMitosis,
		number: 17,
		unlocked: global.bestiaryEnemyMitoshipUnlocked,
		textBestiary: "The union of two Mitoson.\nAlways in a bad temper.\n\nYou can hear them\nARGUING with each other.",
		lines: 5,
		killsText: "KILLED: " + string(global.enemyMitoshipKills),
		killsNum: global.enemyMitoshipKills,
		killsToUnlock: 10,
		killedByText: "KILLED BY: " + string(global.enemyMitoshipKilledBy),
		killedByNum: global.enemyMitoshipKilledBy,
		group: "Mitosis"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
