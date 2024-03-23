// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyGripper()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Gripper",
		keyKilledBy :"gripperKilledBy",
		sprite: s_enemySegments,
		number: 20,
		unlocked: global.bestiaryEnemyGripperUnlocked,
		textBestiary: "No longer in need of roots,\nthey catch their prey\nwith erratic\nand fast movements",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyGripperKills),
		killsNum: global.enemyGripperKills,
		killsToUnlock: 8,
		killedByText: "KILLED BY: " + string(global.enemyGripperKilledBy),
		killedByNum: global.enemyGripperKilledBy,
		group: "Worms"
	})
	global.totalNumberOfEnemiesBestiary +=1;
}
