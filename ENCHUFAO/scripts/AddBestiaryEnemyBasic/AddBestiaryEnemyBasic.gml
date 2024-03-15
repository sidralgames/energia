// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBasic()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		name: "Silver",
		number: 0,
		unlocked: global.bestiaryEnemyBasicUnlocked,
		textBestiary: "The Big Breach\nthrew loads\nof this monstship\ninto our galaxy",
		lines: 4,
		kills: "KILLED: " + string(global.enemyBasicKills),
		killedBy: "KILLED BY: " + string(global.enemyBasicKilledBy)
		
	})

global.numberOfEnemiesBestiary +=1;
}
