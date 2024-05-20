/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();

// Inherit the parent event
event_inherited();

if (killedByPlayer)
{
	global.enemyFreewormKills +=1;
	if (global.bestiaryEnemyFreewormUnlocked = 0)
	{
		global.bestiaryEnemyFreewormUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
}
