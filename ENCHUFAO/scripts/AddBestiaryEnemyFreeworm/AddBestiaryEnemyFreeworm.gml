// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyFreeworm()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Freeworm",
		sprite: s_enemyMouthFree,
		number: 28,
		unlocked: global.bestiaryEnemyFreewormUnlocked,
		textBestiary: "Just as it looks,\n a big SPACE WORM.\nCapable of EAT\nand DESTROY terrain.",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyFreewormKills),
		killsNum: global.enemyFreewormKills,
		killsToUnlock: 15,
		killedByText: "KILLED BY: " + string(global.enemyFreewormKilledBy),
		killedByNum: global.enemyFreewormKilledBy,
		group: "Worms"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
