/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();

// Inherit the parent event
event_inherited();

CreateTemporaryChip(5);

if (killedByPlayer)
{
	if (isMegaEnemy)
	{
		global.enemyBasicMegaKills +=1;
		if (global.bestiaryEnemyBasicMegaUnlocked = 0)
		{
			global.bestiaryEnemyBasicMegaUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
	else
	{
		global.enemyBasicKills +=1;
		if (global.bestiaryEnemyBasicUnlocked = 0)
		{
			global.bestiaryEnemyBasicUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
}