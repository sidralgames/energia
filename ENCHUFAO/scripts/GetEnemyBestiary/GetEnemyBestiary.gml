// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetEnemyBestiary(argument0)
{
	
	switch(enemy.alias)
	{
		default:
		{
			rot = 0;
			drawWall = true;
			wallYoff=wallYoffInitial;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, 0, c_white, alphaInfo, true);
		}
		break;
		
		case ("Minithreat"):
		{
			aliasOff = 10;
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
			aliasOff = 10;
			part_type_alpha2(global.EnemyKilledBy_part, 0.9,0.2);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -40, -20, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -10, -10, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -15, 9, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -35, 20, 0, c_white, alphaInfo, true);
			part_type_alpha2(global.EnemyKilledBy_part, 1,1);
			BestiaryDrawEnemy(enemy.sprite, 0, 15, 0, 0, c_white, alphaInfo, true);
			
		}break;
		
		case ("Mega MotherThreat"):
		{
			aliasOff = 10;
			part_type_alpha2(global.EnemyKilledBy_part, 0.9,0.2);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -40, -20, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -10, -10, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -15, 9, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -35, 20, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -50, 0, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, 5, 25, 0, c_white, alphaInfo, true);
			part_type_alpha2(global.EnemyKilledBy_part, 1,1);
			BestiaryDrawEnemy(enemy.sprite, 0, 20, 0, 0, c_white, alphaInfo, true);
			
		}break;
		
		case ("The Barrier"):
		{
			aliasOff = 10;
			BestiaryDrawEnemy(s_enemyMini, 0, -30, -10, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_enemyMini_2, 0, -20, 9, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(enemy.sprite, 0, 10, 0, 0, c_white, alphaInfo, true);
			
			
		}break;
		
		case ("Spinblade"):
		{
			rot+=10;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, rot, c_white, alphaInfo, false);
			BestiaryDrawEnemy(s_enemyDiscEye, 28, 0, 0, 0, c_white, alphaInfo, false);
			
		}break;
		
		case ("Pincher"):
		{
			drawWall = false;
			aliasOff = 10;
			BestiaryDrawWallEnemy(0, 0, c_white, alphaInfo);
		}break;
		
		case ("Nibblade"):
		{
			drawWall = false;
			aliasOff = 10;
			BestiaryDrawWallEnemy(1, 0, c_white, alphaInfo);
		}break;
		
		case ("PewPew"):
		{
			drawWall = false;
			aliasOff = 10;
			BestiaryDrawTurretEnemy();
		
		}break;
		
		case ("Socketsucker"):
		{
			rot = lerp(rot, 60*-xScale, 0.08)
			imageSprite += 0.2;
			aliasOff = 10;
			
			
			//--- IN SOCKET ---//
			if (enchufeChoosed = false)
			{
				enchufeToDraw = choose(s_enchufe_Ammo, s_enchufe_Ammo_Charged, 
				s_EnchufeEnergy, s_EnchufeEnergy_charged, 
				s_enchufe_HP, s_enchufe_HP_Charged, 
				s_enchufe_Laser, s_enchufe_Laser_Charged);
				enchufeChoosed = true;
			}
			BestiaryDrawEnemy(enchufeToDraw, 0, 0, 0, 60*xScale+rot, c_white, alphaInfo, false);
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 1, 1,60*xScale+rot, c_white, alphaInfo, false);
			
			//--- ALONE ---//
			//BestiaryDrawSockerSuckerAlone(1, 10, c_white, alphaInfo);
		}break;
		
		case ("Lil Crusher"):
		{
			drawWall = false;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 26, 0, c_white, alphaInfo, false);
		}
		break;
		
		case ("Gripper"):
		{
			drawWall = false;
			aliasOff = 10;
			BestiaryDrawEnemyWorm(enemy.alias, 30, c_white, alphaInfo);
		}
		break;
		
		case ("Mimic"):
		{
			
			rot = lerp(rot, 60*-xScale, 0.08)
			aliasOff = 10;
			imageSprite += 0.2;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, 0,60*xScale+rot, c_white, alphaInfo, false);
		}
		break;
		
		case ("O.V.N.I"):
		{
			drawWall = false;
			
			if (targetCreated = false)
			{
				targetCreated = true;
				target = instance_create(__view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+initialY+wallYoff, o_targetBestiary);
				target.image_xscale = xScale
				
			}
			contMisil--;
			target.x = initialX
			if contMisil <=0
			{
				instance_create(__view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )-15 + initialY, o_misilBombBestiary);
				contMisil = random_range(120, 300);
			}
			rot+=1;
			aliasOff = 10;
			imageSprite += 0.2;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, -10, rot, c_white, alphaInfo, false);
		}
		break;
		
		case ("LaserTrap"):
		{
			drawWall = false;
			
			BestiaryDrawLaserTrap()
		}
		break;
		
		case ("BadChip"):
		{
			rot = lerp(rot, 400*-xScale, 0.05)
			imageSprite += 0.3;
			wallYoff=wallYoffInitial;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, 0, 400*xScale+rot, c_white, alphaInfo, false);
		}
		break;
		
		case ("Shielder"):
		{
			wallYoff=wallYoffInitial;
			imageSprite += 0.3;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, 0, c_white, alphaInfo, true);
			BestiaryDrawEnemy(s_shieldPurple, imageSprite, 0, 0, 0, c_white, 0.6, false);
		}
		break;
		
		case ("Trapsule"):
		{
			factorInitialX=0.06
			rot = lerp(rot, 260*-xScale, 0.08)
			imageSprite += 0.2;
			wallYoff=wallYoffInitial;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, 0, 260*xScale+rot, c_white, alphaInfo, false);
		}
	}
	
	if (drawWall)
	{
		draw_sprite_ext(s_wallBestiary, 0, __view_get( e__VW.XView, 0 )+initialXWall,__view_get( e__VW.YView, 0 )+initialY+wallYoff, xScale,1,0,c_white, alphaInfo)
	}
	for (var i=0; i<2; i++)
	{
		draw_set_font(global.customFont16);
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+ (InitialYName+1) + (i*(160 +aliasOff)),string(enemy.alias));
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+ (InitialYName) + (i*(160 +aliasOff)),string(enemy.alias));
	}
}