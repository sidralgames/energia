// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyDisc()
{
	ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Spinblade",
		sprite: s_enemyDisc,
		number: 10,
		unlocked: global.bestiaryEnemyDiscUnlocked,
		textBestiary: "Remains asleep until\nit detects something\napproaching them.\n\nExplodes after dying.",
		lines: 5,
		killsText: "KILLED: " + string(global.enemyDiscKills),
		killsNum: global.enemyDiscKills,
		killsToUnlock: 6,
		killedByText: "KILLED BY: " + string(global.enemyDiscKilledBy),
		killedByNum: global.enemyDiscKilledBy,
		group: "Discs"
	})

	global.numberOfEnemiesBestiary +=1;
}
