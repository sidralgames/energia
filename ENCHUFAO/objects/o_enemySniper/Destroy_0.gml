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

if (killedByPlayer)
{
	if (isMegaEnemy)
	{
		global.enemySniperMegaKills += 1;
		
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
		global.enemySniperKills += 1;
		
		if (global.bestiaryEnemySniperUnlocked = 0)
		{
			global.bestiaryEnemySniperUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
}