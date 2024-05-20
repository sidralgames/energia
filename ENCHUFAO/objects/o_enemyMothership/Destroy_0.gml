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

CreateTemporaryChip(0);
// Inherit the parent event
event_inherited();

if (killedByPlayer)
{
	if (isMegaEnemy)
	{
		global.enemyMothershipMegaKills +=1;
		if (global.bestiaryEnemyMothershipMegaUnlocked = 0)
		{
			global.bestiaryEnemyMothershipMegaUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
	else
	{
		global.enemyMothershipKills +=1;
		if (global.bestiaryEnemyMothershipUnlocked = 0)
		{
			global.bestiaryEnemyMothershipUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
}