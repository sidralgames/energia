// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetEnemyBestiary(argument0)
{
	
	switch(enemy.sprite)
	{
		default:
		{
			BestiaryDrawSpriteWithTrail(enemy.sprite,0,0);
		}break;
		
		case (s_enemyMini_2):
		{
			part_type_alpha2(global.EnemyKilledBy_part, 0.9,0.2);
			BestiaryDrawSpriteWithTrail(enemy.sprite,-30,-20);
			BestiaryDrawSpriteWithTrail(enemy.sprite,20,5);
			BestiaryDrawSpriteWithTrail(enemy.sprite,0,-10);
			BestiaryDrawSpriteWithTrail(enemy.sprite,-5,9);
			BestiaryDrawSpriteWithTrail(enemy.sprite,-25,20);
			
		}break;
		
		case (s_enemyMothership):
		{
			BestiaryDrawSpriteWithTrail(s_enemyMini_2,-40,-20);
			BestiaryDrawSpriteWithTrail(enemy.sprite,10,5);
			BestiaryDrawSpriteWithTrail(s_enemyMini_2,-10,-10);
			BestiaryDrawSpriteWithTrail(s_enemyMini_2,-15,9);
			BestiaryDrawSpriteWithTrail(s_enemyMini_2,-35,20);
			
		}break;
		
		case (s_enemyShieldBestiary):
		{
			BestiaryDrawSpriteWithTrail(s_enemyMini,-30,-10);
			BestiaryDrawSpriteWithTrail(s_enemyMini_2,-20,9);
			BestiaryDrawSpriteWithTrail(enemy.sprite,10,0);
			
		}break;
		
		case (s_enemyDisc):
		{
			rot+=10;
			
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, rot, c_white, 1, false);
			BestiaryDrawEnemy(s_enemyDiscEye, 28, 0, 0, 0, c_white, 1, false);
			
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