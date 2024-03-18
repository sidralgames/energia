// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemySniper()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "The Sniper",
		sprite: s_enemySniper,
		number: 4,
		unlocked: global.bestiaryEnemySniperUnlocked,
		textBestiary: "Slow movement,\nbut precise and fast\n at shooting.\nTip: SlowMo their bullets!",
		lines: 4,
		kills: "KILLED: " + string(global.enemySniperKills),
		killsNum: global.enemySniperKills,
		killsToUnlock: 5,
		killedBy: "KILLED BY: " + string(global.enemySniperKilledBy)
	})

global.numberOfEnemiesBestiary +=1;
}
