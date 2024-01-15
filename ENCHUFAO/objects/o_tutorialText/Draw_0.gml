/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_font(customFont2)
draw_set_halign(fa_center)
if instance_exists(o_playerShip) && instance_exists(o_charger)
{
	if !instance_exists(o_enchufeBombs)
	{
		o_playerShip.canSlowMotion = false;
		o_main.alarm[1] = 0;
	}
	if instance_exists(o_enchufePETA) 
	{
		draw_sprite_ext(s_tutorialText, 6, o_enchufePETA.x,o_enchufePETA.y+40,1,1,0,image_blend, image_alpha)
		draw_sprite_ext(s_energyText, 0, o_enchufePETA.x,o_enchufePETA.y-40,1,1,0,image_blend, image_alpha)	
	}
	if (global.energy >=global.energyLow)
	{	
		if (global.energy <= global.energyMax/2) && !instance_exists(o_enchufe_Hp) && instance_exists(o_enchufe_Hp)
		{
			draw_sprite_ext(s_destroySomething, 3, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+300,0.6,0.6,0,image_blend, image_alpha)
		}
	
		if (o_charger.overcharged = false)
		{
		
			if instance_exists(o_enchufe) && ((global.energy <= global.energyMax/2))
			{
				draw_sprite_ext(s_energyText, 0, o_enchufe.x,o_enchufe.y-53,1,1,0,image_blend, image_alpha)	
			}

			if instance_exists(o_enchufe_Hp) && (global.hp < global.hpMax/2)
			{
				draw_sprite_ext(s_energyText, 1, o_enchufe_Hp.x,o_enchufe_Hp.y-53,1,1,0,image_blend, image_alpha)	
			}

			if instance_exists(o_enchufe_Ammo) && (global.ammo <= global.ammoMax/3)
			{
				draw_sprite_ext(s_energyText, 2, o_enchufe_Ammo.x,o_enchufe_Ammo.y-53,1,1,0,image_blend, image_alpha)	
			}

			if instance_exists(o_enchufe_Laser) && (global.laser <= global.laserMax/3)
			{
				draw_sprite_ext(s_energyText, 3, o_enchufe_Laser.x,o_enchufe_Laser.y-53,1,1,0,image_blend, image_alpha)	
			}

			if instance_exists(o_enchufeBombs) && (global.bombAmmo <= global.bombAmmoMax/4)
			{
				draw_sprite_ext(s_energyText, 4, o_enchufeBombs.x,o_enchufeBombs.y-42,1,1,0,image_blend, image_alpha)	
			}

			if (Energycreated = false)
			{
				
				draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+260,__view_get( e__VW.YView, 0 )+320,0.7,0.7,0,image_blend, image_alpha)
				draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+380,__view_get( e__VW.YView, 0 )+320,0.7,0.7,0,image_blend, image_alpha)		
			}
			if (HPcreated) && !instance_exists(o_enchufe_Ammo)
			{
				//draw_sprite_ext(s_arrows,0,__view_get( e__VW.XView, 0 )+75,__view_get( e__VW.YView, 0 )+55,1,1,0,image_blend, image_alpha)
				if (alarm[2] <= 55)
				{
					draw_sprite_ext(s_destroySomething, 0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+305,0.6,0.6,0,image_blend, image_alpha)
				}
				draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+260,__view_get( e__VW.YView, 0 )+335,0.5,0.5,0,image_blend, image_alpha)
				draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+370,__view_get( e__VW.YView, 0 )+335,0.5,0.5,0,image_blend, image_alpha)		
			}
			

			if (Ammocreated) && !instance_exists(o_enchufeBombs)
			{
				if (global.totalEnemies > 0)
				{
					draw_sprite_ext(s_destroySomething, 1, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+30,0.6,0.6,0,image_blend, image_alpha)
				}
				else
				{
					if (global.ammo<=0)
					{
						if (alarm[2] <= 55)
						{
							draw_sprite_ext(s_tutorialText, 5, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha)
						}
					}
				}
				//draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+200,__view_get( e__VW.YView, 0 )+330,0.4,0.4,0,image_blend, image_alpha)		
				//draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+445,__view_get( e__VW.YView, 0 )+330,0.4,0.4,0,image_blend, image_alpha)
				if (global.ammo<=0)
				{
					draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+330,0.7,0.7,0,image_blend, image_alpha)		
				}
				else
				{
					if (alarm[2] <= 55)
					{
						draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+330,0.7,0.7,0,image_blend, image_alpha)
					}
				}
			}

			if (bombCreated) && (global.bombsTutorial < 1)
			{
				if (global.bombAmmo >=1)
				{
					showBomb = true;
				}
				if (alarm[2] <= 55)
				{
					if (showBomb)
					{
						draw_sprite_ext(s_destroySomething, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+40,0.6,0.6,0,image_blend, image_alpha)
					}
					else
					{
						draw_sprite_ext(s_tutorialText, 3, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha)
					}
				}
				
				draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+338,0.4,0.4,0,image_blend, image_alpha)
				if (global.bombAmmo >=1)
				{
					if (alarm[2] <= 55)
					{
						draw_sprite_ext(s_moveTutorial, 3, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+310,0.7,0.7,0,image_blend, image_alpha)
					}
				}
				else
				{
					draw_sprite_ext(s_moveTutorial, 3, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+310,0.7,0.7,0,image_blend, image_alpha)
				}
			}

			if (LaserCreated) && (!canAssist)
			{
				if (global.laser > 0)
				{
					if (alarm[2] <= 55)
					{
						draw_sprite_ext(s_moveTutorial, 4, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+320,0.7,0.7,0,image_blend, image_alpha)	
					}
				}
				else
				{
					draw_sprite_ext(s_moveTutorial, 4, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+320,0.7,0.7,0,image_blend, image_alpha)	
				}
				
				draw_sprite_ext(s_moveTutorial, 5, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+30,0.7,0.7,0,image_blend, image_alpha)		
				
				if (global.slowMoTime <= 125)
				{	
					draw_sprite_ext(s_tutorialText, 0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+50,1,1,0,image_blend, image_alpha)
				}
				
				if (o_playerShip.key_BulletTime && !o_playerShip.canSlowMotion)
				|| o_main.alarm[1] <=0
				{
					draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+380,__view_get( e__VW.YView, 0 )+345,0.4,0.4,0,image_blend, image_alpha)
					draw_sprite_ext(s_moveTutorial, 3, __view_get( e__VW.XView, 0 )+260,__view_get( e__VW.YView, 0 )+345,0.4,0.4,0,image_blend, image_alpha)				
				}
			}
		}
		else
		{
			draw_sprite_ext(s_tutorialText, 1, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+40,1,1,0,image_blend, image_alpha)
		}
		
		if (LaserCreated) && (o_enchufe_Final.abierto = false)
		{
			draw_sprite_ext(s_tutorialText, 4, o_enchufe_Final.x,o_enchufe_Final.y-50,1,1,0,image_blend, image_alpha)
		}
	}
	else
	{
		if (global.energy <= global.energyMax/2) && !instance_exists(o_enchufe_Hp) && instance_exists(o_enchufe)
		{
			draw_sprite_ext(s_destroySomething, 3, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+300,0.6,0.6,0,image_blend, image_alpha)
		}
		if instance_exists(o_enchufe) && ((global.energy <= global.energyMax/2) || (o_enchufe.charge <200))
		{
			draw_sprite_ext(s_energyText, 0, o_enchufe.x,o_enchufe.y-50,1,1,0,image_blend, image_alpha)	
		}
		draw_set_alpha(0.08)
		draw_set_color(global.red)
		draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
		draw_set_color(c_white)
		draw_set_alpha(1)
	
		draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+260,__view_get( e__VW.YView, 0 )+320,0.7,0.7,0,image_blend, image_alpha)		
		draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+380,__view_get( e__VW.YView, 0 )+320,0.7,0.7,0,image_blend, image_alpha)
	
		if global.PETAAmmo > 0
		{
			if (alarm[1] <30)
			{
			
				draw_sprite_ext(s_throwPeta, 0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+80, 0.9, 0.9,image_angle, image_blend, 1)
			}
	
			if (alarm[1] <= 0)
			{
			
				alarm[1] = 40;	
			}
		}
	
	
				
	}


	if (global.changingTiles) && (bomb = false)
	{
		global.bombsTutorial +=1;
		bomb = true;
		alarm[0] = 30;
	}
	//draw_text( __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+105, string(global.bombsTutorial))
	if (global.energy <=2) && (Ammocreated == false)
	{
		global.energy =2;
	}


	//if (global.hp <=1)
	//{
	//	global.hp =1;
	//}


	if ((global.energy >= global.energyLow+20) && (global.petasUsed>=1)) 
	{
		if (Energycreated = false)
		{
			xx = irandom(30);
			yy = irandom(30);
			if (global.wallgrid_[# xx, yy] == FLOOR) 
			{	
				var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufeEnergy) == oddsEnchufeEnergy) && (EnchufeEnergycreated = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250) &&
					(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
					{
						instance_create_layer(exM,eyM,"Enchufes",o_enchufe); 
						EnchufeEnergycreated = true;
						Energycreated = true;
					}
				}
			}
		}
	}




	if (global.energy >= global.energyMax/2) && instance_exists(o_enchufe)
	{
		if (HPcreated = false)
		{
			xx = irandom(30);
			yy = irandom(30);
			if (global.wallgrid_[# xx, yy] == FLOOR) 
			{	
				var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufeHP) == oddsEnchufeHP) && (EnchufeHPcreated = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250) &&
					(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
					{
						instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Hp); 
						EnchufeHPcreated = true;
						HPcreated = true;
					}
				}
			}
		}
	}

	if (global.hp >= 2)
	{
		if (Ammocreated = false)
		{
			xx = irandom(30);
			yy = irandom(30);
			if (global.wallgrid_[# xx, yy] == FLOOR) 
			{	
				var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (EnchufeAmmocreated = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250) &&
					(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
					{
						instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
						EnchufeAmmocreated = true;
						Ammocreated = true;
					}
				}
			}
		}
	}

	if (global.enemiesKilled >= 3)
	{
		if (bombCreated = false)
		{
			xx = irandom(30);
			yy = irandom(30);
			if (global.wallgrid_[# xx, yy] == FLOOR) 
			{	
				var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufebomb) == oddsEnchufebomb) && (EnchufeBombcreated = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250) &&
					(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
					{
						instance_create_layer(exM,eyM,"Enchufes",o_enchufeBombs); 
						EnchufeBombcreated = true;
						bombCreated = true;
					}
				}
			}
		}
	}

	if (global.bombsTutorial >= 1) && (o_playerShip.plugged == false)
	{
	
		if (LaserCreated = false)
		{
			xx = irandom(30);
			yy = irandom(30);
			if (global.wallgrid_[# xx, yy] == FLOOR) 
			{	
				var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (EnchufeLasercreated = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250) &&
					(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
					{
						instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
						EnchufeLasercreated = true;
						LaserCreated = true;
						minenemies = 2;
						global.slowMoTime = global.slowMoTimeMax;
						global.laser = global.laserMax;
						instance_create_layer(o_playerShip.x,o_playerShip.y,"Enchufes",o_EnemyIncoming); 
						instance_create_layer(o_playerShip.x+40,o_playerShip.y,"Enchufes",o_EnemyIncoming); 
						instance_create_layer(o_playerShip.x-40,o_playerShip.y,"Enchufes",o_EnemyIncoming); 
						instance_create_layer(o_playerShip.x,o_playerShip.y+40,"Enchufes",o_EnemyIncoming); 
						instance_create_layer(o_playerShip.x,o_playerShip.y-40,"Enchufes",o_EnemyIncoming); 
						canAssist = true;
						contAssist = 180;
						contToAssist = 40;
					}
				}
			}
		}
	}
	
	if (global.bombsTutorial <1)
	{
		global.slowMoTime = 0;
	}

	if (Ammocreated = true) && (global.ammo >= 50)
	{
		CanCreateEnemies = true;
	}
	
	if (canAssist)
	{
		if (alarm[2] <= 55)
		{
			draw_sprite_ext(s_moveTutorial, 5, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+310,1,1,0,image_blend, image_alpha)	
		}
		contToAssist--;
		if (contToAssist <= 0)
		{
			global.assistedSlowmo = true;
		}
		
		if (global.assistedSlowmo)
		{	
			if (o_playerShip.key_BulletTime)
			{
				global.assistedSlowmo = false;
				canAssist = false;
			}
		}
	}

	if (CanCreateEnemies)
	{
		contEnemies--;
		if (contEnemies <= 0)
		{
			contEnemies = random_range(200, 250);
			xx = irandom(30);
			yy = irandom(20);
			if (global.wallgrid_[# xx, yy] == FLOOR) && (global.totalEnemiesOnLevel <=minenemies)
			{	
				var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				instance_create(exM,eyM, o_EnemyIncoming)
			}
	
		}
	}

	if instance_exists(o_enchufe_Final)
	{
		if (o_enchufe_Final.abierto)
		{
		draw_sprite_ext(s_tutorialText, 2,o_enchufe_Final.x,o_enchufe_Final.y-50,1,1,0,image_blend, image_alpha)	
		}
	
	}
	
	if (alarm[2] <= 0)
	{
		alarm[2] = 60;
	}
}



