/// @description Insert description here
// You can write your code in this editor
CreateSlowmoParts();


CreateTemporaryChip(3);


// Inherit the parent event
event_inherited();

global.enemySniperKills +=1;

if (global.bestiaryEnemySniperUnlocked = 0)
{
	global.bestiaryEnemySniperUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}
