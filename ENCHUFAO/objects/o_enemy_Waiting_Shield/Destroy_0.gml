/// @description Insert description here
// You can write your code in this editor



CreateSlowmoParts();


// Inherit the parent event
CreateTemporaryChip(2);
event_inherited();

global.enemyShieldKills +=1;

if (global.bestiaryEnemyShieldUnlocked = 0)
{
	global.bestiaryEnemyShieldUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}

