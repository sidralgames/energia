// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBasic()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Silver Hunter",
		sprite: s_enemyBasic,
		number: 0,
		unlocked: global.bestiaryEnemyBasicUnlocked,
		textBestiary: "The BIG BREACH\nthrew loads of\nthis monstship\ninto our galaxy.",
		lines: 4,
		kills: "KILLED: " + string(global.enemyBasicKills),
		killsNum: global.enemyBasicKills,
		killsToUnlock: 10,
		killedBy: "KILLED BY: " + string(global.enemyBasicKilledBy)
		
	})

global.numberOfEnemiesBestiary +=1;
}
