// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesToSpawn_WormBossRoom()
{
	enemyToSpawn = irandom(15)

	if (enemyToSpawn <=13)
	{
		enemy = choose(o_enemySegment, o_enemy, o_enemyFast)
	}
	else
	if (enemyToSpawn > 13) && (enemyToSpawn<15)
	{
		enemy = choose(o_enemyMitosis, o_enemySegment, o_enemyMouth_Free)
	}
	else
	if(enemyToSpawn >= 15)
	{
		enemy = choose(o_BigWorm_Mouth)
	}
}