// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMini()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Minithreat",
		sprite: s_enemyMini_2,
		number: 7,
		unlocked: global.bestiaryEnemyMiniUnlocked,
		textBestiary: "Too many of this\ntiny and fast monstship\ncan be a PROBLEM.",
		lines: 3,
		kills: "KILLED: " + string(global.enemyMiniKills),
		killsNum: global.enemyMiniKills,
		killsToUnlock: 20,
		killedBy: "KILLED BY: " + string(global.enemyMiniKilledBy)
		
	})

global.numberOfEnemiesBestiary +=1;
}
