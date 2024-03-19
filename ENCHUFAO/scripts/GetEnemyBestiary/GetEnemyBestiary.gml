// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetEnemyBestiary(argument0)
{
	
	switch(enemy.alias)
	{
		default:
		{
			aliasOff = 0;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, 0, c_white, alphaInfo, true);
		}
		break;
		
		case ("Minithreat"):
		{
			aliasOff = 0;
			part_type_alpha2(global.EnemyKilledBy_part, 0.9,0.2);
			BestiaryDrawEnemy(enemy.sprite, 0, -30, -20, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(enemy.sprite, 0, 20, 5, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(enemy.sprite, 0, 0, -10, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(enemy.sprite, 0, -5, 9, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(enemy.sprite, 0, -25, 20, 0, c_white, alphaInfo, true);
		}
		break;
		
		case ("MotherThreat"):
		{
			aliasOff = 0;
			part_type_alpha2(global.EnemyKilledBy_part, 0.9,0.2);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -40, -20, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -10, -10, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -15, 9, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -35, 20, 0, c_white, alphaInfo, true);
			part_type_alpha2(global.EnemyKilledBy_part, 1,1);
			BestiaryDrawEnemy(enemy.sprite, 0, 10, 5, 0, c_white, alphaInfo, true);
			
		}break;
		
		case ("The Barrier"):
		{
			aliasOff = 2;
			BestiaryDrawEnemy(s_enemyMini, 0, -30, -10, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -20, 9, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(enemy.sprite, 0, 10, 0, 0, c_white, alphaInfo, true);
			
			
		}break;
		
		case ("Spinblade"):
		{
			rot+=10;
			aliasOff = 0;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, rot, c_white, alphaInfo, false);
			BestiaryDrawEnemy(s_enemyDiscEye, 28, 0, 0, 0, c_white, alphaInfo, false);
			
		}break;
		
		case ("Pincher"):
		{
			aliasOff = 20;
			BestiaryDrawWallEnemy(0, 10, c_white, alphaInfo);
		}break;
		
		case ("Nibblade"):
		{
			aliasOff = 20;
			BestiaryDrawWallEnemy(1, 10, c_white, alphaInfo);
		}break;
		
		case ("PewPew"):
		{
			aliasOff = 10;
			
			BestiaryDrawTurretEnemy();
		
		}break;
	}
	
	
	for (var i=0; i<2; i++)
	{
		draw_set_font(global.customFont16);
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+ (151) + (i*(110 +aliasOff)),string(enemy.alias));
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+ (150) + (i*(110 +aliasOff)),string(enemy.alias));
	}
}