/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if instance_exists(o_playerShip)
{
	o_playerShip.trapped = false;	
}
CreateSlowmoParts();

global.totalEnemiesOnScreen-=1;
global.enemiesKilled+=1;
global.enemiesKilledTotalAch+=1;
