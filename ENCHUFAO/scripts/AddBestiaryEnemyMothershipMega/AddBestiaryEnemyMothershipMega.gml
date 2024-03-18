// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMothershipMega()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Mega MotherThreat",
		sprite: s_enemyMothershipMega,
		number: 9,
		unlocked: global.bestiaryEnemyMothershipMegaUnlocked,
		textBestiary: "More internal capacity.\nExpulses hordes\nof MINITHREATS.",
		lines: 3,
		kills: "KILLED: " + string(global.enemyMothershipMegaKills),
		killsNum: global.enemyMothershipMegaKills,
		killsToUnlock: 5,
		killedBy: "KILLED BY: " + string(global.enemyMothershipMegaKilledBy)
		
	})

global.numberOfEnemiesBestiary +=1;
}
