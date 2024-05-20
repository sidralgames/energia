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

CreateTemporaryChip(2);

// Inherit the parent event
event_inherited();

if (killedByPlayer)
{
	global.enemyMinerKills +=1;
	if (global.bestiaryEnemyMinerUnlocked = 0)
	{
		global.bestiaryEnemyMinerUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
}
