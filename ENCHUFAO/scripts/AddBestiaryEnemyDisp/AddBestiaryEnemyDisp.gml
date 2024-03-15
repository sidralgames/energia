// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyDisp()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "The Shooter",
		sprite: s_enemyDisp,
		number: 3,
		unlocked: global.bestiaryEnemyDispUnlocked,
		textBestiary: "Some gained the\nability to shoot\nREDDARK ENERGY\nfrom their eyes.",
		lines: 4,
		kills: "KILLED: " + string(global.enemyDispKills),
		killsNum: global.enemyDispKills,
		killsToUnlock: 7,
		killedBy: "KILLED BY: " + string(global.enemyDispKilledBy)
	})

global.numberOfEnemiesBestiary +=1;
}
