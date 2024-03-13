// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyFast()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		name: "fast",
		number: 2,
		unlocked: global.bestiaryEnemyFastUnlocked,
		textBestiary: "Evolved to be faster\n \nAlways following you",
		kills: "KILLED: " + string(global.enemyFastKills),
		killedBy: "KILLED BY: " + string(global.enemyFastKilledBy)
		
	})

global.numberOfEnemiesBestiary +=1;
}
