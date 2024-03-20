// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyPewPew()
{
	ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "PewPew",
		sprite: s_torreta,
		number: 14,
		unlocked: global.bestiaryEnemyPewPewUnlocked,
		textBestiary: "This TURRETS were once\npart of our defense systems.\n \nThey seem HACKED now...",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyPewPewKills),
		killsNum: global.enemyPewPewKills,
		killsToUnlock: 15,
		killedByText: "KILLED BY: " + string(global.enemyPewPewKilledBy),
		killedByNum: global.enemyPewPewKilledBy,
		group: "Turrets"
	})

	global.numberOfEnemiesBestiary +=1;
}
