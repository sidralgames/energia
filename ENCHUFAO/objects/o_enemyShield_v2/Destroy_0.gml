/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();

if (isMegaEnemy)
{
	instance_destroy(cable);
}
// Inherit the parent event
event_inherited();

global.enemyShielderKills +=1;

if (global.bestiaryEnemyShielderUnlocked = 0)
{
	global.bestiaryEnemyShielderUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}