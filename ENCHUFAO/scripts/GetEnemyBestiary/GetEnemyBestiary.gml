// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetEnemyBestiary(argument0)
{
	
	switch(enemy.sprite)
	{
		default:
		{
			DrawSpriteWithTrail(enemy.sprite,0,0);
		}break;
		
		case (s_enemyMini_2):
		{
			part_type_alpha2(global.EnemyKilledBy_part, 0.9,0.2);
			DrawSpriteWithTrail(enemy.sprite,-30,-20);
			DrawSpriteWithTrail(enemy.sprite,20,5);
			DrawSpriteWithTrail(enemy.sprite,0,-10);
			DrawSpriteWithTrail(enemy.sprite,-5,9);
			DrawSpriteWithTrail(enemy.sprite,-25,20);
			
		}break;
		
		case (s_enemyMothership):
		{
			DrawSpriteWithTrail(s_enemyMini_2,-40,-20);
			DrawSpriteWithTrail(enemy.sprite,10,5);
			DrawSpriteWithTrail(s_enemyMini_2,-10,-10);
			DrawSpriteWithTrail(s_enemyMini_2,-15,9);
			DrawSpriteWithTrail(s_enemyMini_2,-35,20);
			
		}break;
		
		case (s_enemyShieldBestiary):
		{
			DrawSpriteWithTrail(s_enemyMini,-30,-10);
			DrawSpriteWithTrail(s_enemyMini_2,-20,9);
			DrawSpriteWithTrail(enemy.sprite,10,0);
			
		}break;
	}
	
	//ChooseEnemyBestiaryPosition();
	
	for (var i=0; i<2; i++)
	{
		draw_set_font(global.customFont16);
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151 + (i*110),string(enemy.alias));
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),string(enemy.alias));
	}
}