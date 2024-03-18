// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryGetEnemyLocked()
{
	part_type_alpha2(global.EnemyKilledBy_part, 0.5,0.5);
		
	draw_set_alpha(alphaInfo);

	draw_set_font(global.customFont14);
	draw_set_color(global.brightRed);
	draw_text(__view_get( e__VW.XView, 0 )-1+initialXInterrog,__view_get( e__VW.YView, 0 )+241,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
	draw_set_color(c_white);
	draw_text(__view_get( e__VW.XView, 0 )+initialXInterrog,__view_get( e__VW.YView, 0 )+240,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
		
	draw_set_alpha(alphaInfo)
	for (var i=0; i<2; i++)
	{
		draw_set_font(global.customFont16);
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151 + (i*110),"??? ?? ???");
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"??? ?? ???");
	}
		
	switch (enemy.sprite)
	{
		default: 
		{
			BestiaryDrawEnemy(enemy.sprite, 0,0,0,0,c_dkgrey, 0.8, true);
	
		}break;
			
		case (s_enemyShieldBestiary): 
		{
			BestiaryDrawEnemy(enemy.sprite, 0, -10, 0, 0, c_dkgrey, 0.7, true);
				
		}break;
			
		case (s_enemyDisc):
		{
			rot+=3;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, rot, c_dkgrey, 0.7, false);
			BestiaryDrawEnemy(s_enemyDiscEye, 0, 0, 0, 0, c_dkgrey, 0.7, false);
		}break;
	
	}
		
	BestiaryDrawPaginator(global.customFont14, global.brightRed, 1);
}