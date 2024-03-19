/// @description Insert description here
// You can write your code in this editor
if (room != Sala_Inicio)
{
	if (died = false)
	{
		CreateSlowmoParts();
		global.enemiesKilled+=1;
		global.enemiesKilledTotalAch+=1;
	}
	global.totalEnemiesOnLevel-=1;
}
instance_destroy(cable);
if (isOnlyDraw = false)
{
	if (isMegaEnemy)
	{
		global.enemyNibbladeKills +=1;
		if (global.bestiaryEnemyNibbladeUnlocked = 0)
		{
			global.bestiaryEnemyNibbladeUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
	else
	{
		global.enemyPincherKills +=1;
		if (global.bestiaryEnemyPincherUnlocked = 0)
		{
			global.bestiaryEnemyPincherUnlocked = 1;
			enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
			enemy.unlocked = 1;
			global.enemiesInBestiary +=1;
		}
	}
}

// Inherit the parent event

