/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();

// Inherit the parent event
event_inherited();

CreateTemporaryChip(4);

global.enemyFastKills +=1;

if (global.bestiaryEnemyFastUnlocked = 0)
{
	global.bestiaryEnemyFastUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}