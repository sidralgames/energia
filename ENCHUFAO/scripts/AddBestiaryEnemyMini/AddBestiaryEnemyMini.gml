// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMini()
{
ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Minithreat",
		sprite: s_enemyMini_2,
		number: 7,
		unlocked: global.bestiaryEnemyMiniUnlocked,
		textBestiary: "Too many of this\ntiny and fast monstship\ncan be a PROBLEM.",
		lines: 3,
		killsText: "KILLED: " + string(global.enemyMiniKills),
		killsNum: global.enemyMiniKills,
		killsToUnlock: 30,
		killedByText: "KILLED BY: " + string(global.enemyMiniKilledBy),
		killedByNum: global.enemyMiniKilledBy,
		group: "Mini"
		
	})

global.totalNumberOfEnemiesBestiary +=1;
}
