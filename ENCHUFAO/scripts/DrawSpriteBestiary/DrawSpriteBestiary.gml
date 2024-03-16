// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawSpriteBestiary()
{
	draw_set_halign(fa_center);
	
	initialY = 220;
	initialX = lerp(initialX, 320, 0.15);
	initialXText = lerp(initialXText, 320, 0.15);
	initialXInterrog = lerp(initialXInterrog, 320, 0.15);
	
	enemy = ds_map_find_value(global.bestiaryList, selectedBest);
	
	if (alphaInfo<=1)
	{
		alphaInfo+=0.1
	}
	
	if (enemy.unlocked = 0) || (enemy.killsNum < enemy.killsToUnlock)
	{
		part_type_alpha2(global.EnemyKilledBy_part, 0,0);
		
		draw_set_font(global.customFont14);
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )-1+initialXInterrog,__view_get( e__VW.YView, 0 )+236,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
		draw_set_color(c_white);
		draw_text(__view_get( e__VW.XView, 0 )+initialXInterrog,__view_get( e__VW.YView, 0 )+235,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
		
		draw_set_alpha(alphaInfo)
		for (var i=0; i<2; i++)
		{
			draw_set_font(global.customFont16);
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151 + (i*110),"??? ?? ???");
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"??? ?? ???");
		}
		draw_set_alpha(1);
		
		if (enemy.killsNum > enemy.killsToUnlock/2)
		{
			part_type_alpha2(global.EnemyKilledBy_part, 0.5,0.5);
			
			draw_set_alpha(alphaInfo);
						
			GetEnemyBestiaryLocked(enemy.sprite, c_gray, 0.8);
		
			draw_set_alpha(1)
			draw_set_font(global.customFont14);
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+131,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));
			draw_set_color(c_white);
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+130,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));

		}
		else
		{
			part_type_alpha2(global.EnemyKilledBy_part, 0,0);
			
			draw_set_alpha(alphaInfo);
							
			draw_sprite_ext(s_interrog, image_index, __view_get( e__VW.XView, 0 )+initialXInterrog,__view_get( e__VW.YView, 0 )+210, 1,1,0,image_blend, alphaInfo)
		
			draw_set_alpha(1)
			draw_set_font(global.customFont14);
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+131,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));
			draw_set_color(c_white);
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+130,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));

		}
	}
	else
	{
		draw_set_alpha(alphaInfo)
		
		part_type_alpha2(global.EnemyKilledBy_part, 1,1);
		
		GetEnemyBestiary(enemy.sprite);
		
		draw_set_halign(fa_center);
		draw_set_font(global.customFont14);
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+190+initialXText,__view_get( e__VW.YView, 0 )+211-(enemy.lines*10), string(enemy.textBestiary))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+191+initialXText,__view_get( e__VW.YView, 0 )+210-(enemy.lines*10), string(enemy.textBestiary))
		
		draw_set_halign(fa_right);
		draw_set_font(global.customFont14);
		
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )-100+initialXText,__view_get( e__VW.YView, 0 )+191, string(enemy.kills))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )-100+initialXText,__view_get( e__VW.YView, 0 )+190, string(enemy.kills))
		
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )-100+initialXText,__view_get( e__VW.YView, 0 )+221, string(enemy.killedBy))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )-100+initialXText,__view_get( e__VW.YView, 0 )+220, string(enemy.killedBy))
		
		draw_set_alpha(1)
		draw_set_halign(fa_center);
		draw_set_font(global.customFont14);
		draw_set_color(global.lightBlue);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+131,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+130,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));
	}
}