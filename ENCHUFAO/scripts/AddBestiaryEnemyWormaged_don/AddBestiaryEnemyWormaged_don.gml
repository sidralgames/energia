// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyWormageddon_()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Wormageddon",
		keyKilledBy :"wormageddonKilledBy",
		sprite: s_bigWorm_Mouth,
		number: 29,
		unlocked: global.bestiaryEnemyWormageddonUnlocked,
		textBestiary: "BIGGER and STRONGER.\nBut they ain't\ngetting any smarter.\n\n\n\nDo not let them\nsurround you.",
		lines: 9,
		killsText: "KILLED: " + string(global.enemyWormageddonKills),
		killsNum: global.enemyWormageddonKills,
		killsToUnlock: 10,
		killedByText: "KILLED BY: " + string(global.enemyWormageddonKilledBy),
		killedByNum: global.enemyWormageddonKilledBy,
		group: "Worms"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}