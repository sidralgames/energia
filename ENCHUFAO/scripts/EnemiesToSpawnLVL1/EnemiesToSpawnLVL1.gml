// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesToSpawnLVL1()
{
	enemyToSpawn = irandom(15)

	if (enemyToSpawn <=18)
	{
		enemy = choose(o_BossWorm_Mouth)
	}
	
}