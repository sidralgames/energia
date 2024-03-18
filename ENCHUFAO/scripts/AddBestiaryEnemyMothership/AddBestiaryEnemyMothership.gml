// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMothership()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "MotherThreat",
		sprite: s_enemyMothership,
		number: 8,
		unlocked: global.bestiaryEnemyMothershipUnlocked,
		textBestiary: "They keep throwing\nhordes of MINITHREATS.\nDestroying it quickly\nis HIGHLY recommended.",
		lines: 4,
		kills: "KILLED: " + string(global.enemyMothershipKills),
		killsNum: global.enemyMothershipKills,
		killsToUnlock: 5,
		killedBy: "KILLED BY: " + string(global.enemyMothershipKilledBy)
		
	})

global.numberOfEnemiesBestiary +=1;
}
