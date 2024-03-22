// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyBadChip()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "BadChip",
		sprite: s_chipMimic,
		number: 25,
		unlocked: global.bestiaryEnemyBadChipUnlocked,
		textBestiary: "Bad Chip.\nFull of bad energy.\nExplodes after consumed.",
		lines: 3,
		killsText: "KILLED: " + string(global.enemyBadChipKills),
		killsNum: global.enemyBadChipKills,
		killsToUnlock: 12,
		killedByText: "KILLED BY: " + string(global.enemyBadChipKilledBy),
		killedByNum: global.enemyBadChipKilledBy,
		group: "Chips"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
