// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddBestiaryEnemyShield()
{
ds_map_add(global.bestiaryList, global.numberOfEnemiesBestiary,
	{ 
		alias: "The Barrier",
		sprite: s_enemyShieldBestiary,
		number: 6,
		unlocked: global.bestiaryEnemyShieldUnlocked,
		textBestiary: "Other monstships can\ntake cover behind\ntheir energy SHIELD",
		lines: 3,
		killsText: "KILLED: " + string(global.enemyShieldKills),
		killsNum: global.enemyShieldKills,
		killsToUnlock: 3,
		killedByText: "KILLED BY: " + string(global.enemyShieldKilledBy),
		killedByNum: global.enemyShieldKilledBy,
		group: "Basic"
		
	})

global.numberOfEnemiesBestiary +=1;
}
