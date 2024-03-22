// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyCapsuleMimic()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Trapsule",
		sprite: s_capsule_MimicBestiary,
		number: 27,
		unlocked: global.bestiaryEnemyCapsuleMimicUnlocked,
		textBestiary: "Some kind of PARASITE\ninfested this capsule.\nNo prize inside for you!",
		lines: 3,
		killsText: "KILLED: " + string(global.enemyCapsuleMimicKills),
		killsNum: global.enemyShielderKills,
		killsToUnlock: 15,
		killedByText: "KILLED BY: " + string(global.enemyCapsuleMimicKilledBy),
		killedByNum: global.enemyCapsuleMimicKilledBy,
		group: "Mimics"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
