/// @description Insert description here
// You can write your code in this editor
CreateSlowmoParts();





// Inherit the parent event
event_inherited();

global.enemyDiscKills +=1;
if (global.bestiaryEnemyDiscUnlocked = 0)
{
	global.bestiaryEnemyDiscUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}