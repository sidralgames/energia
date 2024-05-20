/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();

if (isMegaEnemy)
{
	if instance_exists(cable)
	{
		instance_destroy(cable);
	}
}
// Inherit the parent event
event_inherited();

if (killedByPlayer)
{
	global.enemyGripperKills +=1;
	if (global.bestiaryEnemyGripperUnlocked = 0)
	{
		global.bestiaryEnemyGripperUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
}
