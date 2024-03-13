// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawSpriteBestiary()
{

	draw_set_halign(fa_center);
	initialX = lerp(initialX, 320, 0.2);
	
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
			
				draw_set_font(global.customFont14);
				draw_set_color(global.brightRed);
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Silver Hunter");
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Silver Hunter");
		
				draw_set_font(global.customFont12);
				if (tipChoosed = false)
				{
					tipChoosed = true;
					tip = irandom_range(0,11)
				}
				infoGameOverEnemyBasic(tip);
				
				draw_set_color(global.lightBlue)
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281, string(text))
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280, string(text))	
		
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
			
			
				draw_set_font(global.customFont14);
				draw_set_color(global.brightRed);
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"MegaChaser");
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"MegaChaser");
		
				draw_set_font(global.customFont12);
				if (tipChoosed = false)
				{
					tipChoosed = true;
					tip = irandom_range(0,11)
				}
				infoGameOverEnemyBasic(tip);
				draw_set_color(global.lightBlue)
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281, string(text))
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280, string(text))
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
			
			
				draw_set_color(global.brightRed);
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Red Runner");

				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Red Runner");
		
				draw_set_font(global.customFont12);
				if (tipChoosed = false)
				{
					tipChoosed = true;
					tip = irandom_range(0,11)
				}
				infoGameOverEnemyBasic(tip);
				draw_set_color(global.lightBlue)
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281, string(text))
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280, string(text))
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
				draw_set_color(global.brightRed);
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"The Shooter");

				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"The Shooter");
	
	
				draw_set_font(global.customFont12);
				if (tipChoosed = false)
				{
					tipChoosed = true;
					tip = irandom_range(0,6)
				}
				infoGameOverEnemyShooter(tip);
				draw_set_color(global.lightBlue)
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
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
			
				draw_set_color(global.brightRed);
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"The Sniper");

				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"The Sniper");
	
	
				draw_set_font(global.customFont12);
				if (tipChoosed = false)
				{
					tipChoosed = true;
					tip = irandom_range(0,6)
				}
				infoGameOverEnemyShooter(tip);
				draw_set_color(global.lightBlue)
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
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
			
				draw_set_color(global.brightRed);
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"The MegaSniper");

				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"The MegaSniper");
	
	
				draw_set_font(global.customFont12);
				if (tipChoosed = false)
				{
					tipChoosed = true;
					tip = irandom_range(0,6)
				}
				infoGameOverEnemyShooter(tip);
				draw_set_color(global.lightBlue)
				draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
			}
		
		}break;
		
	}
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
		draw_set_halign(fa_left);
		draw_set_font(global.customFont13);
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+181, string(enemy.textBestiary))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+31,__view_get( e__VW.YView, 0 )+180, string(enemy.textBestiary))
		
		draw_set_halign(fa_right);
		draw_set_font(global.customFont14);
		
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+600,__view_get( e__VW.YView, 0 )+181, string(enemy.kills))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+601,__view_get( e__VW.YView, 0 )+180, string(enemy.kills))
		
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+600,__view_get( e__VW.YView, 0 )+221, string(enemy.killedBy))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+601,__view_get( e__VW.YView, 0 )+220, string(enemy.killedBy))
		
		draw_set_halign(fa_center);
		draw_set_font(global.customFont14);
		draw_set_color(global.lightBlue);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+131,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+130,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));
	}
}