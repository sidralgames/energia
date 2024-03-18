// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemySniperMega()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "The MegaSniper",
		sprite: s_enemySniperMega,
		number: 5,
		unlocked: global.bestiaryEnemySniperUnlocked,
		textBestiary: "A better sniper model.\nShoots more bullets.\nBe even more careful!",
		lines: 3,
		kills: "KILLED: " + string(global.enemySniperMegaKills),
		killsNum: global.enemySniperMegaKills,
		killsToUnlock: 5,
		killedBy: "KILLED BY: " + string(global.enemySniperMegaKilledBy)
	})

global.numberOfEnemiesBestiary +=1;
}
