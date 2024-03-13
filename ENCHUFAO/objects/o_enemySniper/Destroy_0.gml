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

CreateTemporaryChip(3);
// Inherit the parent event
event_inherited();

if (isMegaEnemy)
	{
		if (global.bestiaryEnemySniperMegaUnlocked = 0)
		{
			global.bestiaryEnemySniperMegaUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
	else
	{
		if (global.bestiaryEnemySniperUnlocked = 0)
		{
			global.bestiaryEnemySniperUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}