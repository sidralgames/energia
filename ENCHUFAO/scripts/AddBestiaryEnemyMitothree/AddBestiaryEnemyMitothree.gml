// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMitothree()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Mitothree",
		sprite: s_enemyMitosis_Mega,
		number: 18,
		unlocked: global.bestiaryEnemyMitothreeUnlocked,
		textBestiary: "They won't be happy\nif you interrupt\ntheir discussion.\n\nTip: Make sure you\ndestroy them ALL!",
		lines: 6,
		killsText: "KILLED: " + string(global.enemyMitothreeKills),
		killsNum: global.enemyMitothreeKills,
		killsToUnlock: 8,
		killedByText: "KILLED BY: " + string(global.enemyMitothreeKilledBy),
		killedByNum: global.enemyMitothreeKilledBy,
		group: "Mitosis"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
