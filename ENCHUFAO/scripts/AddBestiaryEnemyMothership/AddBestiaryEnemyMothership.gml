// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMothership()
{
ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "MotherThreat",
		sprite: s_enemyMothership,
		number: 8,
		unlocked: global.bestiaryEnemyMothershipUnlocked,
		textBestiary: "Throw MINITHREATS\nfrom their insides.\nDestroying it quickly\nis HIGHLY recommended.",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyMothershipKills),
		killsNum: global.enemyMothershipKills,
		killsToUnlock: 6,
		killedByText: "KILLED BY: " + string(global.enemyMothershipKilledBy),
		killedByNum: global.enemyMothershipKilledBy,
		group: "Mothership"
		
	})

global.totalNumberOfEnemiesBestiary +=1;
}
