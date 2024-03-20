// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyGripper()
{
	ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "Gripper",
		sprite: s_enemySegments,
		number: 20,
		unlocked: global.bestiaryEnemyGripperUnlocked,
		textBestiary: "Piloted by a Minithreat,\nthis enormous MECHA\ncan destroy everything\nwith its hard hull.",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyGripperKills),
		killsNum: global.enemyGripperKills,
		killsToUnlock: 5,
		killedByText: "KILLED BY: " + string(global.enemyGripperKilledBy),
		killedByNum: global.enemyGripperKilledBy,
		group: "Worms"
	})

	global.numberOfEnemiesBestiary +=1;
}
