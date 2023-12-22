/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


draw_set_font(global.customFont16);
draw_set_halign(fa_center);

draw_set_color(global.lightBlue);
draw_text(__view_get( e__VW.XView, 0 )+329,__view_get( e__VW.YView, 0 )+186,"Killed by: ");

draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+185,"Killed by: ");

if (drawsprite)
{
	draw_sprite_ext(global.spriteKilledBy, image_index, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+245,1,1, image_angle, image_blend, o_gameOver.image_alpha)
}


switch(global.spriteKilledBy)
{
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
			tip = irandom_range(0,12)
		}
		infoGameOverEnemy(tip);
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+291, string(text))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+290, string(text))
		
	}
	break;
	
	case (s_enemyBasicMega):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"MegaChaser");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"MegaChaser");
	}
	break;
	
	case (s_enemyMini):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Red Runner");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Red Runner");
	}
	break;
	
	case (s_enemyMini_2):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Minithreat");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Minithreat");
	}
	break;
	
	case (s_enemyBomber):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Bombo");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Bombo");
	}
	break;
	
	case (s_enemyDisp):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"The Shooter");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"The Shooter");
	}
	break;
	
	case (s_enemySniper):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"The Sniper");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"The Sniper");
	}
	break;
	
	case (s_enemySniperMega):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"The MegaSniper");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"The MegaSniper");
	}
	break;
	
	case (s_enemyMines):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"IMine");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"IMine");
	}
	break;
	
	case (s_enemyMitosis):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mitoship");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mitoship");
	}
	break;
	
	case (s_enemyMitosis_Son):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mitoson");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mitoson");
	}
	break;
	
	case (s_enemyMitosis_Mega):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mitothree");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mitothree");
	}
	break;
	
	case (s_enemyMothership):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mother Loader");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mother Loader");
	}
	break;
	
	case (s_enemyMothershipMega):
	{
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Mega Mother Loader");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Mega Mother Loader");
	}
	break;
	
	case (s_enemyMisil):
	{
		image_angle+=0.1;
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"O.V.N.I");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"O.V.N.I");
	}
	break;
	
	case (s_enemyShield):
	{
		draw_sprite_ext(s_shieldEnemy, 10, __view_get( e__VW.XView, 0 )+332,__view_get( e__VW.YView, 0 )+265,1,1, image_angle, image_blend, 0.9)
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281,"The Barrier");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280,"The Barrier");
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
	
	case (s_enemyDisc):
	{
		image_angle+=2;
	
		draw_sprite_ext(s_enemyDiscEye, image_index, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+245,1,1, image_angle, image_blend, image_alpha)

		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Spinblade");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Spinblade");
	}
	break;
	
	case (s_enemyMouth):
	{
		drawsprite = false;
		if (wallMouth = false)
		{
			wallMouth = true;
			wall = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"PauseHUE_Sub",o_wallGameOver);
			anchor = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_mouthAnchor);
			enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+215,"PauseHUE",o_enemy_Mouth);
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
			tip = irandom_range(12,15)
		}
		infoGameOverEnemy(tip);
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+296, string(text))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+295, string(text))
	}
	break;
	
	case (s_enemyMouthMega):
	{
		drawsprite = false;
		if (wallMouth = false)
		{
			wallMouth = true;
			wall = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+270,"PauseHUE_Sub",o_wallGameOver);
			anchor = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+255,"PauseHUE",o_mouthAnchor);
			enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+225,"PauseHUE",o_enemy_Mouth);
			if instance_exists(enemy)
			{
				enemy.diffYFar = -10;
				enemy.isMegaEnemy = true;
				enemy.isMega = 0;
				if instance_exists(anchor)
				{
					anchor.enemyBelong = enemy;
					wallMouth = true;
				}
			}
			
		}
		
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281,"Nibblade");

		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280,"Nibblade");
	}
	break;
	
	
	
	
}




if (global.killedByTrail = true)
{
	if (image_alpha>=0.5)
	{
		contParts --;
		if (contParts <=0)
		{
			part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+320 - (sprite_width/4), __view_get( e__VW.YView, 0 )+245, global.EnemyKilledBy_part , 1)
			contParts = contPartsInitial;
		}
	}
}



