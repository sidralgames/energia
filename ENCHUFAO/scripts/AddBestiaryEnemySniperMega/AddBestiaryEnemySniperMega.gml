// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemySniperMega()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "The MegaSniper",
		sprite: s_enemySniperMega,
		number: 5,
		unlocked: global.bestiaryEnemySniperMegaUnlocked,
		textBestiary: "A better SNIPER model.\nShoots more bullets.\nBe even more careful!",
		lines: 3,
		killsText: "KILLED: " + string(global.enemySniperMegaKills),
		killsNum: global.enemySniperMegaKills,
		killsToUnlock: 5,
		killedByText: "KILLED BY: " + string(global.enemySniperMegaKilledBy),
		killedByNum: global.enemySniperMegaKilledBy,
		group: "Shooter"
	})

global.numberOfEnemiesBestiary +=1;
}
