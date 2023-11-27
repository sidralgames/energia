// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesToSpawnLVL1()
{
	enemyToSpawn = irandom(15)

	if (enemyToSpawn <=8)
	{
		enemy = choose(o_enemy, o_enemyFast, o_enemyFastMini, o_enemyMini)
	}
	else
	if (enemyToSpawn > 8) && (enemyToSpawn<=12)
	{
		enemy = choose(o_enemyDisp,o_enemyMitosis,o_enemy_Waiting_Shield)
	}
	else
	if (enemyToSpawn > 12) && (enemyToSpawn<=14)
	{
		enemy = choose(o_enemyMothership, o_enemySniper, o_enemyDisc)
	}
	else
	if(enemyToSpawn >= 15)
	{
		enemy = choose(o_enemyMines,o_enemyBomber,o_enemyMouth_Free)
	}
}