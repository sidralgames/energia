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

CreateTemporaryChip(5);
// Inherit the parent event
event_inherited();


if (killedByPlayer)
{
	if (isMegaEnemy)
	{
		global.enemyMitothreeKills +=1;
		if (global.bestiaryEnemyMitothreeUnlocked = 0)
		{
			global.bestiaryEnemyMitothreeUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
	else
	{
		global.enemyMitoshipKills +=1;
		if (global.bestiaryEnemyMitoshipUnlocked = 0)
		{
			global.bestiaryEnemyMitoshipUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
}