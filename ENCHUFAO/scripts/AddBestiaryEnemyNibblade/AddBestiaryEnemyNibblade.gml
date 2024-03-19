// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyNibblade()
{
	ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Nibblade",
		sprite: s_enemyMouthMega,
		number: 12,
		unlocked: global.bestiaryEnemyNibbladeUnlocked,
		textBestiary: "If a PINCHER \ncan reach enough food,\n it will grow\nbigger and deadlier",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyNibbladeKills),
		killsNum: global.enemyNibbladeKills,
		killsToUnlock: 10,
		killedByText: "KILLED BY: " + string(global.enemyNibbladeKilledBy),
		killedByNum: global.enemyNibbladeKilledBy,
		group: "WallMouth"
	})

	global.numberOfEnemiesBestiary +=1;
}
