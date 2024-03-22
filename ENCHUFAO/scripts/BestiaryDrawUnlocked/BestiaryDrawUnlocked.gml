// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawUnlocked()
{
	draw_set_alpha(alphaInfo)
	part_type_alpha2(global.EnemyKilledBy_part, 1,1);
		
	GetEnemyBestiary(enemy.alias);
		
	BestiaryDrawEnemyInfo();
		
	BestiaryDrawPaginator(global.customFont14, global.lightBlue, 1);
	
	
}