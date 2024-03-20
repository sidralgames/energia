// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMines()
{
	ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Socketsucker",
		sprite: s_enemyMines,
		number: 19,
		unlocked: global.bestiaryEnemySocketsuckerUnlocked,
		textBestiary: "They absorb energy\nfrom SPACESOCKETS,\nleaving them\nUNUSABLE for a while.",
		lines: 3,
		killsText: "KILLED: " + string(global.enemySocketsuckerKills),
		killsNum: global.enemySocketsuckerKills,
		killsToUnlock: 5,
		killedByText: "KILLED BY: " + string(global.enemySocketsuckerKilledBy),
		killedByNum: global.enemySocketsuckerKilledBy,
		group: "SocketSuckers"
	})

	global.numberOfEnemiesBestiary +=1;
}
