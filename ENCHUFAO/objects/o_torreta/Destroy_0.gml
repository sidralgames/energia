/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (killedByPlayer)
{
	global.enemyPewPewKills +=1;
	if (global.bestiaryEnemyPewPewUnlocked = 0)
	{
		global.bestiaryEnemyPewPewUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
}




