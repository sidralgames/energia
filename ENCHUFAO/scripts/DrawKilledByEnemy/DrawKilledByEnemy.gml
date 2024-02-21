// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawKilledByEnemy()
{
	switch(global.spriteKilledBy)
	{
		// ------- BASIC ENEMIES --------//
		case (s_enemyBasic):
		{
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
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
	
		case (s_enemyBasicMega):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"MegaChaser");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"MegaChaser");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,12)
			}
			infoGameOverEnemyBasic(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
	
		case (s_enemyMini):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Red Runner");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Red Runner");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,12)
			}
			infoGameOverEnemyBasic(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		// ------- MINI ENEMIES --------//
		case (s_enemyMini_2):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Minithreat");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Minithreat");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,8)
			}
			infoGameOverEnemyMini(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		// -------BOMB ENEMIES --------//
		case (s_enemyBomber):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Bombo");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Bombo");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7)
			}
			infoGameOverEnemyBombs(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
	
		}
		break;
		// ------- SHOOTER ENEMIES --------//	
		case (s_enemyDisp):
		{
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
		break;
	
		case (s_enemySniper):
		{
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
		break;
	
		case (s_enemySniperMega):
		{
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
		break;
		// ------- BOMB MINES ENEMIES --------//
		case (s_enemyMines):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Miner");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Miner");
		
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,5)
			}
			infoGameOverEnemyBombs(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
	
		}
		break;
		// ------- MITOSIS ENEMIES --------//
		case (s_enemyMitosis):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mitoship");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mitoship");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7)
			}
			infoGameOverEnemyMitosis(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
	
		case (s_enemyMitosis_Son):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mitoson");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mitoson");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7)
			}
			infoGameOverEnemyMitosis(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
	
		case (s_enemyMitosis_Mega):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mitothree");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mitothree");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7)
			}
			infoGameOverEnemyMitosis(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		// ------- MOTHERSHIP ENEMIES --------//	
		case (s_enemyMothership):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mother Loader");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mother Loader");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,5)
			}
			infoGameOverEnemyMotherShip(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
	
		}
		break;
	
		case (s_enemyMothershipMega):
		{
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mega Mother Loader");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mega Mother Loader");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,5)
			}
			infoGameOverEnemyMotherShip(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		// ------- OVNI ENEMIES --------//
		case (s_enemyMisil):
		{
			image_angle+=0.1;
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"O.V.N.I");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"O.V.N.I");
		
		draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,3)
			}
			infoGameOverEnemyOVNI(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		
		
		}
		break;
		// ------- SHIELD ENEMIES --------//
		case (s_enemyShield):
		{
			draw_sprite_ext(s_shieldEnemy, 10, __view_get( e__VW.XView, 0 )+332,__view_get( e__VW.YView, 0 )+245,1,1, image_angle, image_blend, 0.9)
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281,"The Barrier");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280,"The Barrier");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,8)
			}
			infoGameOverEnemyShield(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+306, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+305, string(text))
		}
		break;
	
		case (s_shieldEnemy):
		{
			global.spriteKilledBy = s_enemyShield;
		}
		break;
	
		case (s_enemyShield_v2):
		{
			draw_sprite_ext(s_shieldPurple, 5, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+265,1,1, image_angle, image_blend, 0.4)
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281,"The Shielder");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280,"The Shielder");
		}
		break;
		// ------- DISC ENEMIES --------//
		case (s_enemyDisc):
		{
			image_angle+=8;
	
			draw_sprite_ext(s_enemyDiscEye, 16, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+245,1,1, 0, image_blend, image_alpha)

			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Spinblade");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Spinblade");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,9)
			}
			infoGameOverEnemyDisc(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
	
		}
		break;
		
		//------ CHIP MIMIC ------//
		case (s_chipMimic):
		{
			image_speed = 0.6;

			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Badchip");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Badchip");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,2)
			}
			infoGameOverEnemyChip(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
	
		}
		break;
		// ------- WALL ENEMIES --------//	
		case (s_enemyMouth):
		{
			drawsprite = false;
			if (wallMouth = false)
			{
				wallMouth = true;
				wall = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+262,"PauseHUE_Sub",o_wallGameOver);
				anchor = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+247,"PauseHUE",o_mouthAnchor);
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+217,"PauseHUE",o_enemy_Mouth);
				if instance_exists(enemy)
				{
					enemy.diffYFar = -10;
					enemy.canBeMega = false;
					enemy.isMegaEnemy = false;
				
					if instance_exists(anchor)
					{
						enemy.anchor = anchor;
						anchor.enemyBelong = enemy;
						wallMouth = true;
					}
				}
			
			}
		
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+276,"Pincher");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+275,"Pincher");
		
			draw_set_font(global.customFont12);
		
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWall(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+301, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+300, string(text))
		}
		break;
	
		case (s_enemyMouthMega):
		{
			drawsprite = false;
			if (wallMouth = false)
			{
				wallMouth = true;
				wall = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+262,"PauseHUE_Sub",o_wallGameOver);
				anchor = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+247,"PauseHUE",o_mouthAnchor);
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+217,"PauseHUE",o_enemy_Mouth);
				if instance_exists(enemy)
				{
					enemy.diffYFar = -10;
					enemy.canBeMega = true;
					enemy.isMegaEnemy = true;
					enemy.isMega = 0;
				
					if instance_exists(anchor)
					{
						enemy.anchor = anchor;
						anchor.enemyBelong = enemy;
						wallMouth = true;
					}
				}
			
			}
		
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+276,"Nibblade");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+275,"Nibblade");
		
			draw_set_font(global.customFont12);
		
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWall(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+301, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+300, string(text))
		}
		break;
		// ------- TURRET TRAP --------//
		case (s_torreta):
		{
			depth = layer_get_depth("PauseHUE")-1;
			if (wallMouth = false)
			{
				wallMouth = true;
				wall = instance_create_layer(__view_get( e__VW.XView, 0 )+317,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_wallGameOver);
				wall.image_index = 1;
			}
		
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+256,"Pewpew");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+255,"Pewpew");
		
			draw_set_font(global.customFont12);
		
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,5)
			}
			infoGameOverEnemyTorreta(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280, string(text))
		}
		break;
		// ------- LASER TRAP --------//
		case (s_laserEnemy):
		{
			drawsprite = false;
			depth = layer_get_depth("PauseHUE")-1;
			if (wallMouth = false)
			{
				wallMouth = true;
				laserGameOver = instance_create_layer(__view_get( e__VW.XView, 0 )+405,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_laserGameOver);
				wall = instance_create_layer(__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_wallGameOver);
				wall.image_index = 2;
				wall.image_angle = 270;
				wall2 = instance_create_layer(__view_get( e__VW.XView, 0 )+420,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_wallGameOver);
				wall2.image_index = 2;
				wall2.image_angle = 90;
			
			}
	
		
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+271,"Lasertrap");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+270,"Lasertrap");
		
			draw_set_font(global.customFont12);
		
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7)
			}
			infoGameOverEnemyLaser(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+291, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+290, string(text))
		}
		break;
		// ------- WORM ENEMIES --------//
		case (s_enemyMouthFree):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+390,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_enemyMouth_FreeGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Freeworm");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Freeworm");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case (s_enemyMouth_Body_FreeHit):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+390,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_enemyMouth_FreeGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Freeworm");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Freeworm");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case (s_enemySegments):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+350,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_enemySegmentsGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Gripper");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Gripper");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case (s_enemySegmets_segmentHitBox):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+350,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_enemySegmentsGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Gripper");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Gripper");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case (s_bigWorm_Mouth):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_BigWormGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Wormageddon");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Wormageddon");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case (s_enemyBigWorm_HitBox):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_BigWormGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Wormageddon");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Wormageddon");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		// ------- BOSSES --------//
		case (s_bossMechaActive):
		{
			off = 10;
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281,"Lil Crusher");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280,"Lil Crusher");
		
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,5)
			}
			infoGameOverLilCrusher(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+306, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+305, string(text))
		}
		break;
		
		case (s_bossWorm_Mouth_Metal):
		{
			
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+560,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_BossWorm_MouthGameOver)
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Gusanene");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Gusanene");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7);
			}
			infoGameOverGusanene(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case (s_enemyBossWorm_HitBox):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+560,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_BossWorm_MouthGameOver)
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Gusanene");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Gusanene");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7);
			}
			infoGameOverGusanene(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case (s_BossWorm_Body_Metal_hitbox):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+560,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_BossWorm_MouthGameOver)
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Gusanene");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Gusanene");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,7);
			}
			infoGameOverGusanene(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		
	}
}