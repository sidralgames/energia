// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBasicMega()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		name: "MegaChaser",
		number: 1,
		unlocked: global.bestiaryEnemyBasicMegaUnlocked,
		textBestiary: "Improved version\nof the Silver Hunter\nHarder to kill but slower",
		lines: 3,
		kills: "KILLED: " + string(global.enemyBasicMegaKills),
		killedBy: "KILLED BY: " + string(global.enemyBasicMegaKilledBy)
	})

global.numberOfEnemiesBestiary +=1;
}
