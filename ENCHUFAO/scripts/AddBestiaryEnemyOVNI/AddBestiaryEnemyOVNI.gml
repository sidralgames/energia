// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyOVNI()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "O.V.N.I",
		sprite: s_enemyMisil,
		number: 23,
		unlocked: global.bestiaryEnemyOVNIUnlocked,
		textBestiary: "OMG aliens exist!\n \nAnd they shoot\nHOMING missiles!",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyOVNIKills),
		killsNum: global.enemyOVNIKills,
		killsToUnlock: 5,
		killedByText: "KILLED BY: " + string(global.enemyOVNIKilledBy),
		killedByNum: global.enemyOVNIKilledBy,
		group: "OVNI"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
