// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawSpriteBestiary()
{

	draw_set_halign(fa_center);
	initialX = lerp(initialX, 320, 0.15);
	initialXText = lerp(initialXText, 320, 0.15);
	
	if (alphaInfo<=1)
	{
		alphaInfo+=0.1
	}
	draw_set_alpha(alphaInfo)
	switch(selectedBest)
	{
		case 0: //---- BASIC
		{
			enemy = ds_map_find_value(global.bestiaryList, selectedBest)

			if (enemy.unlocked = 1)
			{
				draw_sprite_ext(s_enemyBasic, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, xScale,1,0,image_blend, image_alpha)
				contParts --;
				if (contParts <=0)
				{
					part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale, __view_get( e__VW.YView, 0 )+220, global.EnemyKilledBy_part , 1)
					contParts = contPartsInitial;
				}
				
				for (var i=0; i<2; i++)
				{
					draw_set_font(global.customFont16);
					draw_set_color(global.brightRed);
					draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151 + (i*110),"Silver Hunter");
					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"Silver Hunter");
				}
				
		
				//draw_set_font(global.customFont12);
				//if (tipChoosed = false)
				//{
				//	tipChoosed = true;
				//	tip = irandom_range(0,11)
				//}
				//infoGameOverEnemyBasic(tip);
				
				//draw_set_color(global.lightBlue)
				//draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+281, string(text))
				//draw_set_color(c_white)
				//draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+280, string(text))	
		
			}
		}break;
		
		case 1: //---- MEGA BASIC
		{
			enemy = ds_map_find_value(global.bestiaryList, selectedBest)
			if (enemy.unlocked = 1)
			{
				draw_sprite_ext(s_enemyBasicMega, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, xScale,1,0,image_blend, image_alpha)
				contParts --;
				if (contParts <=0)
				{
					part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale, __view_get( e__VW.YView, 0 )+220, global.EnemyKilledBy_part , 1)
					contParts = contPartsInitial;
				}
			
				for (var i=0; i<2; i++)
				{
					draw_set_font(global.customFont16);
					draw_set_color(global.brightRed);
					draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151+ (i*110),"MegaChaser");
					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"MegaChaser");
				}
				//draw_set_font(global.customFont12);
				//if (tipChoosed = false)
				//{
				//	tipChoosed = true;
				//	tip = irandom_range(0,11)
				//}
				//infoGameOverEnemyBasic(tip);
				//draw_set_color(global.lightBlue)
				//draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+281, string(text))
				//draw_set_color(c_white)
				//draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+280, string(text))
			}
		}break;
		
		case 2: //---- FAST
		{
			enemy = ds_map_find_value(global.bestiaryList, selectedBest)
			
			if (enemy.unlocked = 1)
			{
			
				draw_sprite_ext(s_enemyMini, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, xScale,1,0,image_blend, image_alpha)
				contParts --;
				if (contParts <=0)
				{
					part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale, __view_get( e__VW.YView, 0 )+220, global.EnemyKilledBy_part , 1)
					contParts = contPartsInitial;
				}
				for (var i=0; i<2; i++)
				{
					draw_set_font(global.customFont16);
					draw_set_color(global.brightRed);
					draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151+ (i*110),"Red Runner");

					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"Red Runner");
				}
		
				//draw_set_font(global.customFont12);
				//if (tipChoosed = false)
				//{
				//	tipChoosed = true;
				//	tip = irandom_range(0,11)
				//}
				//infoGameOverEnemyBasic(tip);
				//draw_set_color(global.lightBlue)
				//draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+281, string(text))
				//draw_set_color(c_white)
				//draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+280, string(text))
			}
		}break;
		
		case 3: //---- SHOOTER
		{
			enemy = ds_map_find_value(global.bestiaryList, selectedBest)
			
			if (enemy.unlocked = 1)
			{
				draw_sprite_ext(s_enemyDisp, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, xScale,1,0,image_blend, image_alpha)
				contParts --;
				if (contParts <=0)
				{
					part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale, __view_get( e__VW.YView, 0 )+220, global.EnemyKilledBy_part , 1)
					contParts = contPartsInitial;
				}
				
				for (var i=0; i<2; i++)
				{
					draw_set_font(global.customFont16);
					draw_set_color(global.brightRed);
					draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151+ (i*110),"The Shooter");

					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"The Shooter");
				}
	
				//draw_set_font(global.customFont12);
				//if (tipChoosed = false)
				//{
				//	tipChoosed = true;
				//	tip = irandom_range(0,6)
				//}
				//infoGameOverEnemyShooter(tip);
				//draw_set_color(global.lightBlue)
				//draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+281, string(text))
				//draw_set_color(c_white)
				//draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+280, string(text))
			}
		
		}break;
		
		case 4: //---- SNIPER
		{
			enemy = ds_map_find_value(global.bestiaryList, selectedBest)
			
			if (enemy.unlocked = 1)
			{
			
				draw_sprite_ext(s_enemySniper, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, xScale,1,0,image_blend, image_alpha)
				contParts --;
				if (contParts <=0)
				{
					part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale, __view_get( e__VW.YView, 0 )+220, global.EnemyKilledBy_part , 1)
					contParts = contPartsInitial;
				}
				
				for (var i=0; i<2; i++)
				{
					draw_set_font(global.customFont16);
					draw_set_color(global.brightRed);
					draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151+ (i*110),"The Sniper");

					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"The Sniper");
				}
	
				//draw_set_font(global.customFont12);
				//if (tipChoosed = false)
				//{
				//	tipChoosed = true;
				//	tip = irandom_range(0,6)
				//}
				//infoGameOverEnemyShooter(tip);
				//draw_set_color(global.lightBlue)
				//draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+281, string(text))
				//draw_set_color(c_white)
				//draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+280, string(text))
			}
		
		}break;
		
		case 5: //---- MEGA SNIPER
		{
			enemy = ds_map_find_value(global.bestiaryList, selectedBest)
			
			if (enemy.unlocked = 1)
			{
			
				draw_sprite_ext(s_enemySniperMega, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, xScale,1,0,image_blend, image_alpha)
				contParts --;
				if (contParts <=0)
				{
					part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale, __view_get( e__VW.YView, 0 )+220, global.EnemyKilledBy_part , 1)
					contParts = contPartsInitial;
				}
				
				for (var i=0; i<2; i++)
				{
					draw_set_font(global.customFont16);
					draw_set_color(global.brightRed);
					draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151+ (i*110),"The MegaSniper");

					draw_set_color(c_white)
					draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"The MegaSniper");
				}
	
				//draw_set_font(global.customFont12);
				//if (tipChoosed = false)
				//{
				//	tipChoosed = true;
				//	tip = irandom_range(0,6)
				//}
				//infoGameOverEnemyShooter(tip);
				//draw_set_color(global.lightBlue)
				//draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+281, string(text))
				//draw_set_color(c_white)
				//draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+280, string(text))
			}
		
		}break;
		
	}
	draw_set_alpha(1)
	enemy = ds_map_find_value(global.bestiaryList, selectedBest)
			
	if (enemy.unlocked = 0)
	{
		draw_sprite_ext(s_interrog, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, 1,1,0,image_blend, image_alpha)
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+131,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+130,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));
	}
	else
	{
		draw_set_alpha(alphaInfo)
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