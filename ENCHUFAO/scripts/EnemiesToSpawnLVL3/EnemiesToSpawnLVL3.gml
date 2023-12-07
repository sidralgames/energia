// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesToSpawnLVL3()
{
	enemyToSpawn = irandom(10)

	if (enemyToSpawn <=4)
	{
		enemy = choose(o_enemy, o_enemyFast, o_enemyFastMini)
	}
	else
	if (enemyToSpawn > 4) && (enemyToSpawn<=7)
	{
		enemy = choose(o_enemyDisp,o_enemyMitosis,o_enemy_Waiting_Shield)
	}
	else
	if (enemyToSpawn > 7) && (enemyToSpawn<=9)
	{
		enemy = choose(o_enemyMothership, o_enemySniper, o_enemyDisc, o_enemySegment)
	}
	else
	if(enemyToSpawn >= 9)
	{
		enemy = choose(o_enemyMines,o_enemyBomber,o_enemyMouth_Free, o_BigWorm_Mouth)
	}
}