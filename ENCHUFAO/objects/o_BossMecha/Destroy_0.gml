/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.enemyBossCrusherKills +=1;
if (global.bestiaryEnemyBossCrusherUnlocked = 0)
{
	global.bestiaryEnemyBossCrusherUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}











