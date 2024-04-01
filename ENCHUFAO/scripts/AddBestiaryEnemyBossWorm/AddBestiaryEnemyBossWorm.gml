// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBossWorm()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Gusanene",
		keyKilledBy :"gusaneneKilledBy",
		sprite: s_bossWorm_Mouth_Metal,
		number: 30,
		unlocked: global.bestiaryEnemyBossWormUnlocked,
		textBestiary: "Clearly the BIGGEST worm\nyou've ever seen.\nFully armored.\n\n\n\nUse it as a\nSOURCE of power.",
		lines: 10,
		killsText: "KILLED: " + string(global.enemyBossWormKills),
		killsNum: global.enemyBossWormKills,
		killsToUnlock: 1,
		killedByText: "KILLED BY: " + string(global.enemyBossWormKilledBy),
		killedByNum: global.enemyBossWormKilledBy,
		group: "Worms"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}