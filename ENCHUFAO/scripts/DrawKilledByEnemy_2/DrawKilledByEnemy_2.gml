// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawKilledByEnemy_2()
{
	enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
	
	switch(enemy.group)
	{
		// ------- BASIC ENEMIES --------//
		default:
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyBasic, irandom_range(0,11), global.FinalTrail, 0);
		}
		break
		
		case ("Basic"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyBasic, irandom_range(0,11), global.FinalTrail, 0);
		}
		break;
	
		case ("Shooter"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyShooter, irandom_range(0,6), global.FinalTrail, 0);
		}
		break;
		
		case ("Mini"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyMini, irandom_range(0,8), global.FinalTrail, 0);
		}
		break;
		
		case ("Mothership"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyMotherShip, irandom_range(0,5), global.FinalTrail, 0);
		}
		break;
		
		case ("Bombers"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyBombs, irandom_range(0,7), global.FinalTrail, 0);
		}
		break;
		
		case ("Mitosis"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyMitosis, irandom_range(0,8), global.FinalTrail, 0);
		}
		break;
		
		case ("Shields"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyShield, irandom_range(0,8), global.FinalTrail, 0);
		}
		break;
		
		case ("Discs"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyDisc, irandom_range(0,9), global.FinalTrail, 0);
		}
		break;
		
		case ("WallMouth"):
		{
			GameOverDrawWallEnemy(enemy.alias, infoGameOverEnemyWall, irandom_range(0,10));
		}
		break;
		
		case ("Turrets"):
		{
			GameOverDrawTurretEnemy(enemy.alias, infoGameOverEnemyTorreta, irandom_range(0,5));
		}
		break;
		
		case ("SocketSuckers"):
		{
			imageSprite += 0.2;
			GameOverDrawSprite(s_enchufe_Ammo, 0);
			KilledByDrawEnemy(enemy.alias, infoGameOverEnemyShield, irandom_range(0,8), global.FinalTrail, imageSprite);
		}
		break;
		
		case ("Lil Crusher"):
		{
			KilledByDrawEnemy(enemy.alias, infoGameOverLilCrusher, irandom_range(0,5), false, 0);
		}
		break;
		
		//Worms
		
		
		// -------BOMB ENEMIES & BOMBS-------//
		case (s_explo):
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
		
	
		case (s_enemyShield_v2):
		{
			draw_sprite_ext(s_shieldPurple, 5, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+265,1,1, image_angle, image_blend, 0.4)
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281,"The Shielder");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280,"The Shielder");
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