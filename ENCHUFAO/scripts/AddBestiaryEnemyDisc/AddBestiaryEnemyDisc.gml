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
		textBestiary: "Remains asleep until\napproaching them.\nExplodes after dying.",
		lines: 3,
		kills: "KILLED: " + string(global.enemyDiscKills),
		killsNum: global.enemyDiscKills,
		killsToUnlock: 5,
		killedBy: "KILLED BY: " + string(global.enemyDiscKilledBy)
	})

	global.numberOfEnemiesBestiary +=1;
}
