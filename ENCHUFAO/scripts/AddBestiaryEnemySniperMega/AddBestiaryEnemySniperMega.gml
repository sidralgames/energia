// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemySniperMega()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		textStat: "Best Run: Level " + string(global.bestLevelRun),
		number: 5,
		unlocked: global.bestiaryEnemySniperUnlocked,
		textBestiary: "A better model\nShoots more bullets\nBe even more careful!",
		lines: 3,
		kills: "KILLED: " + string(global.enemySniperKills),
		killedBy: "KILLED BY: " + string(global.enemySniperKilledBy)
	})

global.numberOfEnemiesBestiary +=1;
}
