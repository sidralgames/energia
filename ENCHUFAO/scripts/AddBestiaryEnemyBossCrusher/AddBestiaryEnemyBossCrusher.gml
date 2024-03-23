// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBossCrusher()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Lil Crusher",
		keyKilledBy :"lilcrusherKilledBy",
		sprite: s_bossMechaActive,
		number: 19,
		unlocked: global.bestiaryEnemyBossCrusherUnlocked,
		textBestiary: "Piloted by a Minithreat,\nthis enormous MECHA\ncan destroy everything\nwith its hard hull.",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyBossCrusherKills),
		killsNum: global.enemyBossCrusherKills,
		killsToUnlock: 1,
		killedByText: "KILLED BY: " + string(global.enemyBossCrusherKilledBy),
		killedByNum: global.enemyBossCrusherKilledBy,
		group: "Crusher"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
