/// @description Insert description here
// You can write your code in this editor


CreateSlowmoParts();



// Inherit the parent event
event_inherited();


if (killedByPlayer)
{
	global.enemySocketsuckerKills +=1;
	if (global.bestiaryEnemySocketsuckerUnlocked = 0)
	{
		global.bestiaryEnemySocketsuckerUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
}
