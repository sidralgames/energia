// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyMitoson()
{
	ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Mitoson",
		sprite: s_enemyMitosis_Son,
		number: 16,
		unlocked: global.bestiaryEnemyMitosonUnlocked,
		textBestiary: "This hermetic specimen\nonly goes with their equals.\nVery INTOLERANT with others.\nWatch out.",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyMitosonKills),
		killsNum: global.enemyMitosonKills,
		killsToUnlock: 10,
		killedByText: "KILLED BY: " + string(global.enemyMitosonKilledBy),
		killedByNum: global.enemyMitosonKilledBy,
		group: "Mitosis"
	})

	global.numberOfEnemiesBestiary +=1;
}
