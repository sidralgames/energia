// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawLocked()
{
	part_type_alpha2(global.EnemyKilledBy_part, 0.5,0.5);
		
	draw_set_alpha(alphaInfo);
	
		
	switch (enemy.alias)
	{
		default: 
		{
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, 0,0,0,0,global.darkPalette, 1, true);
	
		}break;
			
		case ("The Barrier"): 
		{
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, 0, global.darkPalette, 1, true);
				
		}break;
			
		case ("Spinblade"):
		{
			aliasOff = 10;
			rot+=3;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, rot, global.darkPalette, 1, false);
			BestiaryDrawEnemy(s_enemyDiscEye, 0, 0, 0, 0, global.darkPalette, 1, false);
		}break;
		
		case ("Pincher"):
		{
			aliasOff = 15;
			BestiaryDrawWallEnemy(0, 0, global.darkPalette, 1);
		}
		break;
		
		case ("Nibblade"):
		{
			aliasOff = 15;
			BestiaryDrawWallEnemy(1, 0, global.darkPalette, 1);
		}break;
		
		case ("PewPew"):
		{
			aliasOff = 10;
			
			current = dsin(timer * frequency) * amplitude + midpoint;
			timer++;
			rot=current;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				wall = instance_create_layer(__view_get( e__VW.XView, 0 )+317,__view_get( e__VW.YView, 0 )+initialY,"PauseHUE_Sub",o_wallGameOver);
				wall.image_index = 1;
			}
			
			if instance_exists(wall)
			{
				wall.image_alpha = alphaInfo;
				wall.image_blend = global.darkPalette;
				wall.x = __view_get( e__VW.XView, 0 )+initialX;
			}
			
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, rot, global.darkPalette, 1, false);
		
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
			BestiaryDrawEnemy(enchufeToDraw, 0, 0, 0, 60*xScale+rot, global.darkPalette, alphaInfo, false);
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 1, 1,60*xScale+rot, global.darkPalette, alphaInfo, false);
			
			//--- ALONE ---//
			//BestiaryDrawSockerSuckerAlone(1, 10, c_white, alphaInfo);
		}break;
		
		case ("Mimic"):
		{
			
			rot = lerp(rot, 60*-xScale, 0.08)
			aliasOff = 10;
			imageSprite += 0.2;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, 0,60*xScale+rot,  global.darkPalette, alphaInfo, false);
		}
		break;
		
		case ("LaserTrap"):
		{
			drawWall = false;
			
			BestiaryDrawLaserTrap(global.darkPalette);
		}
		break;
		
		case ("Lil Crusher"):
		{
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, 0, 0, 26, 0, global.darkPalette, 1, false);
		}
		break;
		
		case ("Gripper"):
		{
			aliasOff = 10;
			BestiaryDrawEnemyWorm(enemy.alias, 30, 0, global.darkPalette, 1);
		}
		break;
		
		case ("O.V.N.I"):
		{
			rot+=1;
			aliasOff = 10;
			imageSprite += 0.2;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, 0, rot, global.darkPalette, alphaInfo, false);
		}
		break;
		
		case ("BadChip"):
		{
			rot = lerp(rot, 400*-xScale, 0.05)
			imageSprite += 0.3;
			wallYoff=wallYoffInitial;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, 0, 400*xScale+rot, global.darkPalette, alphaInfo, false);
		}
		break;
		
		case ("Trapsule"):
		{
			factorInitialX=0.06
			rot = lerp(rot, 260*-xScale, 0.08)
			imageSprite += 0.2;
			wallYoff=wallYoffInitial;
			aliasOff = 10;
			BestiaryDrawEnemy(enemy.sprite, imageSprite, 0, 0, 260*xScale+rot, global.darkPalette, alphaInfo, false);
		}
		break
		
		case ("Freeworm"):
		{
			
			aliasOff = 10;
			BestiaryDrawEnemyWorm(enemy.alias, 55, 0, global.darkPalette, alphaInfo);
		}
		break;
		
		case ("Wormageddon"):
		{
			
			aliasOff = 10;
			BestiaryDrawEnemyWorm(enemy.alias, 90,0, global.darkPalette, alphaInfo);
			//BestiaryDrawEnemyWorm("Gripper", -10, -30, c_white, alphaInfo);
		}
	
	}
	
	draw_set_alpha(alphaInfo);
	draw_set_font(global.customFont14);
	draw_set_color(global.brightRed);
	draw_text(__view_get( e__VW.XView, 0 )-1+initialXInterrog,__view_get( e__VW.YView, 0 )+InitialYToKill+1+aliasOff,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
	draw_set_color(c_white);
	draw_text(__view_get( e__VW.XView, 0 )+initialXInterrog,__view_get( e__VW.YView, 0 )+InitialYToKill+aliasOff,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
		
	draw_set_alpha(alphaInfo)
	for (var i=0; i<2; i++)
	{
		draw_set_font(global.customFont16);
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+InitialYName + (i*(160+aliasOff)),"??? ?? ???");
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+InitialYName+ (i*(160+aliasOff)),"??? ?? ???");
	}
	
	BestiaryDrawPaginator(global.customFont14, global.brightRed, 1);
}