// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesToSpawnLVL1()
{
	
		enemyToSpawn = irandom(15)

		if (enemyToSpawn <=9)
		{
			enemy = choose(o_enemy, o_enemyFast, o_enemyFastMini, o_enemyOVNI)
		}
		else
		if (enemyToSpawn > 9) && (enemyToSpawn<=13)
		{
			enemy = choose(o_enemy,o_enemyDisp)
		}
		else
		if (enemyToSpawn > 13) && (enemyToSpawn<15)
		{
			enemy = choose(o_enemySniper, o_enemyDisc,o_enemyMitosis)
		}
		else
		if(enemyToSpawn >= 15)
		{
			enemy = choose(o_enemyBomber,o_enemyMothership,o_enemy_Waiting_Shield)
		}
	
}