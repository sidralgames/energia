/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();


CreateTemporaryChip(8);

// Inherit the parent event
event_inherited();

global.enemyMiniKills +=1;
if (global.bestiaryEnemyMiniUnlocked = 0)
{
	global.bestiaryEnemyMiniUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}