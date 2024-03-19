// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBasicMega()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "MegaChaser",
		sprite: s_enemyBasicMega,
		number: 1,
		unlocked: global.bestiaryEnemyBasicMegaUnlocked,
		textBestiary: "Improved version\nof the Silver Hunter.\nHarder to kill but slower",
		lines: 3,
		killsText: "KILLED: " + string(global.enemyBasicMegaKills),
		killsNum: global.enemyBasicMegaKills,
		killsToUnlock: 8,
		killedByText: "KILLED BY: " + string(global.enemyBasicMegaKilledBy),
		killedByNum: global.enemyBasicMegaKilledBy,
		group: "Basic"
	})

global.numberOfEnemiesBestiary +=1;
}
