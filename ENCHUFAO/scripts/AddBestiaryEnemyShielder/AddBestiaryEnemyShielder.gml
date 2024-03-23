// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyShielder()
{
	ds_map_add(global.bestiaryList, global.totalNumberOfEnemiesBestiary,
	{ 
		alias: "Shielder",
		keyKilledBy :"shielderKilledBy",
		sprite: s_enemyShield_v2,
		number: 26,
		unlocked: global.bestiaryEnemyShielderUnlocked,
		textBestiary: "Grants SHIELDS to\nnearby enemies.\n\nWhich is bad.",
		lines: 4,
		killsText: "KILLED: " + string(global.enemyShielderKills),
		killsNum: global.enemyShielderKills,
		killsToUnlock: 10,
		killedByText: "KILLED BY: " + string(global.enemyShielderKilledBy),
		killedByNum: global.enemyShielderKilledBy,
		group: "Shields"
	})

	global.totalNumberOfEnemiesBestiary +=1;
}
