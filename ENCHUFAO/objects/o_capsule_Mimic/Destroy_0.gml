/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if instance_exists(o_playerShip)
{
	o_playerShip.trapped = false;	
}
CreateSlowmoParts();

global.totalEnemiesOnLevel-=1;
global.enemiesKilled+=1;
global.enemiesKilledTotalAch+=1;

global.enemyCapsuleMimicKills +=1;
if (global.bestiaryEnemyCapsuleMimicUnlocked = 0)
{
	global.bestiaryEnemyCapsuleMimicUnlocked = 1;
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	enemy.unlocked = 1;
	global.enemiesInBestiary +=1;
}