/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();

CreateTemporaryChip(3);


// Inherit the parent event
event_inherited();


if (killedByPlayer)
{
	global.enemyMitosonKills +=1;
	
	if (global.bestiaryEnemyMitosonUnlocked = 0)
	{
		global.bestiaryEnemyMitosonUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
}