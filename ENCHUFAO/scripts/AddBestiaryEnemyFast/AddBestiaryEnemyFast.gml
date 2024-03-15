// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyFast()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Red Runner",
		sprite: s_enemyMini,
		number: 2,
		unlocked: global.bestiaryEnemyFastUnlocked,
		textBestiary: "Evolved to be faster.\nALWAYS catching\ntheir prey.\nShoot'em fast.",
		lines: 4,
		kills: "KILLED: " + string(global.enemyFastKills),
		killsNum: global.enemyFastKills,
		killsToUnlock: 12,
		killedBy: "KILLED BY: " + string(global.enemyFastKilledBy)
		
	})

global.numberOfEnemiesBestiary +=1;
}
