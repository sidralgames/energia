// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawKilledByEnemy_2()
{
	for (var i=0; i<global.totalNumberOfEnemiesBestiary; i++)
	{
		enemy = ds_map_find_value(global.bestiaryList, i);
		if (enemy.number = enemyBestiaryNumber)
		{
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
		
		
				case ("Lasers"):
				{
					GameOverDrawLaser(enemy.alias, infoGameOverEnemyLaser, irandom_range(0,7)) ;
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
		
				case ("OVNI"):
				{
					KilledByDrawEnemy(enemy.alias, infoGameOverEnemyOVNI, irandom_range(0,3), false, 0);
				}
				break;
		
				case ("Chips"):
				{
					imageSprite += 0.3;
					KilledByDrawEnemy(enemy.alias, infoGameOverEnemyChip, irandom_range(0,2), false, imageSprite);
				}
				break;
		
				case ("Worms"):
				{
					GameOverDrawWorm(enemy.alias);
				}
				break;
		
				case ("Lil Crusher"):
				{
					KilledByDrawEnemy(enemy.alias, infoGameOverLilCrusher, irandom_range(0,5), false, 0);
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
	}
}