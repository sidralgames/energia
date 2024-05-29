// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawExplosion()
{
	for (var i=0; i<global.totalNumberOfExplosions; i++)
	{
		explosion = ds_map_find_value(global.explosionList, i);
		if (explosion.number = enemyBestiaryNumber)
		{
			switch(explosion.sprite)
			{
	
				case (s_exploGreen):
				{
					BombKilledBy();
				}
				break;
		
				case (s_exploPurple):
				{
					BombKilledBy();
				}
				break;
		
				case (s_exploOrange):
				{
					BombKilledBy();
				}
				break;
		
				case (s_exploBlue):
				{
					BombKilledBy();
				}
				break;
				
				default:
				{
					off = 5;
					image_speed = 0.3;
	
					draw_sprite_ext(explosion.sprite, image_index,__view_get( e__VW.XView, 0 )+319,
					__view_get( e__VW.YView, 0 )+245, 1,1,image_angle, image_blend, image_alpha);
	
					draw_set_color(global.brightRed);
					draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+271,"Explosion");
					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+270,"Explosion");
		
					draw_set_font(global.customFont12);
					if (tipChoosed = false)
					{
						tipChoosed = true;
						tip = irandom_range(0,7)
					}
	
					infoGameOverEnemyBombs(tip);
	
					draw_set_color(global.lightBlue)
					draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+296, string(text))
					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+295, string(text))
				}break;
			}
		}
	}
}