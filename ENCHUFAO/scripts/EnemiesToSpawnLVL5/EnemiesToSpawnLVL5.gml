// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesToSpawnLVL5()
{
	enemyToSpawn = irandom(10)

	if (enemyToSpawn <=3)
	{
		enemy = choose(o_enemy, o_enemyFast, o_enemyFastMini, o_enemyMini)
	}
	else
	if (enemyToSpawn > 3) && (enemyToSpawn<=6)
	{
		enemy = choose(o_enemyDisp,o_enemyMitosis,o_enemy_Waiting_Shield)
	}
	else
	if (enemyToSpawn > 6) && (enemyToSpawn<=9)
	{
		enemy = choose(o_enemyMothership, o_enemySniper, o_enemyDisc)
	}
	else
	if(enemyToSpawn >= 9)
	{
		enemy = choose(o_enemyMines,o_enemyBomber,o_enemyMouth_Free)
	}
}