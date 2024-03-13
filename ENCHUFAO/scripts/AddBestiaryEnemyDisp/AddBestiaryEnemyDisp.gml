// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyDisp()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		textStat: "Best Run: Level " + string(global.bestLevelRun),
		number: 3,
		unlocked: global.bestiaryEnemyDispUnlocked,
		textBestiary: "Some gained the\nability to shoot\ndark energy\nfrom their eyes\n\nBetter avoid their shoots",
		kills: "KILLED: " + string(global.enemyDispKills),
		killedBy: "KILLED BY: " + string(global.enemyDispKilledBy)
	})

global.numberOfEnemiesBestiary +=1;
}
