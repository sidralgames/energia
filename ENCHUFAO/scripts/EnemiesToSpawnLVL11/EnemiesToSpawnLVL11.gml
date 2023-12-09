// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesToSpawnLVL11()
{
	enemyToSpawn = irandom(15)

	if (enemyToSpawn <=3)
	{
		enemy = choose(o_enemyFast, o_enemyFastMini,o_enemySegment)
	}
	else
	if (enemyToSpawn > 3) && (enemyToSpawn<=6)
	{
		enemy = choose(o_enemySniper,o_enemyMitosis,o_enemy_Waiting_Shield,o_enemySegment)
	}
	else
	if (enemyToSpawn > 6) && (enemyToSpawn<=8)
	{
		enemy = choose(o_enemyMothership, o_enemySniper, o_enemyDisc, o_enemySegment)
	}
	else
	if(enemyToSpawn > 8) && (enemyToSpawn<=12)
	{
		enemy = choose(o_enemyMines,o_enemyBomber,o_enemyMouth_Free, o_BigWorm_Mouth)
	}
	else
	if(enemyToSpawn > 12)
	{
		enemy = choose(o_enemyMouth_Free, o_BigWorm_Mouth)
	}
}