// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyEnchufeMimic()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Mimic",
		sprite: s_enchufeMimicBestiary,
		number: 21,
		unlocked: global.bestiaryEnemyEnchufeMimicUnlocked,
		textBestiary: "A TRAP socket.\n \nWon't let you go.",
		lines: 3,
		killsText: "KILLED: " + string(global.enemyEnchufeMimicKills),
		killsNum: global.enemyEnchufeMimicKills,
		killsToUnlock: 8,
		killedByText: "KILLED BY: " + string(global.enemyEnchufeMimicKilledBy),
		killedByNum: global.enemyEnchufeMimicKilledBy,
		group: "Mimics"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
