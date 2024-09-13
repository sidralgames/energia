/// @description Insert description here
// You can write your code in this editor
if (pause) 
{
	//instance_activate_object(o_pauseMenu);
	surface_set_target(global.mainSurf);

	if (surface_exists(pauseSurf)) 
	{
		draw_surface_ext(pauseSurf, __view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,const*_scale,const*_scale,0,image_blend,image_alpha)
	}
	else
	{
		pauseSurf = surface_create(resW, resH);
	}
	surface_reset_target();
	
}

if (key_start)
{
	//addInfoEnemiesKilled();

	//instance_activate_object(o_pauseMenu);
	if instance_exists(o_main)
	{
		o_main.isPaused = true;
	}
	alarm[0] = 5;
}


if (pause)
{
	/// @description Insert description here
// You can write your code in this editor

orange = make_color_rgb(254,174, 52);


draw_set_alpha(0.7);
draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+ 640,__view_get( e__VW.YView, 0 )+360,c_black, c_black, c_black,c_black, false)
draw_set_alpha(1);

draw_sprite_ext(s_pauseBackground,spriteBack, __view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,1,1,0,image_blend, 0.7)

if (showControls)
{
	draw_sprite_ext(s_controlsAll, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
}
else
{
	if (spriteBack < 1)
	{
		draw_sprite_ext(s_pause,0, __view_get( e__VW.XView, 0 )+510,__view_get( e__VW.YView, 0 )+60,1,1,0,image_blend, image_alpha)

		timesToDraw = 0;

		infoPause();
		
		draw_set_halign(fa_center)
		draw_set_font(global.customFont12)
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+499,__view_get( e__VW.YView, 0 )+326, string(text))
		draw_text(__view_get( e__VW.XView, 0 )+510,__view_get( e__VW.YView, 0 )+311, "Level - " + string(global.level))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+500,__view_get( e__VW.YView, 0 )+325, string(text))
		draw_text(__view_get( e__VW.XView, 0 )+510,__view_get( e__VW.YView, 0 )+310, "Level - " + string(global.level))
	
			
		DrawUpgradeNames();
		
		
		DrawStatsUpgrades();

		//-------------MENU-------------////
		
		switch(selected)
		{
			case 0:
			{
				draw_sprite_ext(s_resume, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+140,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+220,0.65,0.65,0,image_blend, image_alpha)	
				draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
			}break;
	
			case 1:
			{
				draw_sprite_ext(s_resume, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+140,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+220,0.65,0.65,0,image_blend, image_alpha)	
				draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
			}break;
	
			case 2:
			{
				draw_sprite_ext(s_resume, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+140,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+220,0.8,0.8,0,image_blend, image_alpha)	
				draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)		
			}break;
			
			case 3:
			{
				draw_sprite_ext(s_resume, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+140,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+220,0.65,0.65,0,image_blend, image_alpha)	
				if (quit == false)
				{
					draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+260,1.2,1.2,0,image_blend, image_alpha)		
				}
				else
				{
						draw_sprite_ext(s_sureMenu, 0,  __view_get( e__VW.XView, 0 )+ 510,__view_get( e__VW.YView, 0 )+260,1.2,1.2,0,image_blend, image_alpha)		
				}
			
			}break;

		}
	}
	else
	{
		if (spriteBack > 5)
		{
			draw_sprite_ext(s_pause,0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+50,1,1,0,image_blend, image_alpha);
			if (selected != 3)
			{
				draw_sprite_ext(global.crosshairSprite, 0,  __view_get( e__VW.XView, 0 )+ 395,__view_get( e__VW.YView, 0 )+211,1,1,0,image_blend, image_alpha);
			}
			else
			{
				draw_sprite_ext(global.crosshairSprite, 0,  __view_get( e__VW.XView, 0 )+ 410,__view_get( e__VW.YView, 0 )+211,1.2,1.2,0,image_blend, image_alpha);
			}
			switch(selected)
			{
				case 0:
				{
					if (global.screenshakeIsOn)
					{
						draw_sprite_ext(s_screenshakeOn, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1.2,1.2,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_screenshakeOff, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1.2,1.2,0,image_blend, image_alpha)
					}
										
					if (global.assistedAim)
					{
						draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
					}
					
					if (global.assistSlowmoIsOn)
					{
						draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
					}
					
					draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+290,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_emergencyExplic, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+340,0.75,0.75,0,image_blend, image_alpha)
					
				}break;
	
				case 1:
				{
					if (global.screenshakeIsOn)
					{
						draw_sprite_ext(s_screenshakeOn, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_screenshakeOff, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
					}
										
					if (global.assistedAim)
					{
						draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1.2,1.2,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1.2,1.2,0,image_blend, image_alpha)
					}
					
					if (global.assistSlowmoIsOn)
					{
						draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
					}
					
					draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+290,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_emergencyExplic, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+340,0.75,0.75,0,image_blend, image_alpha)
				
				}break;
	
				case 2:
				{
					
					if (global.screenshakeIsOn)
					{
						draw_sprite_ext(s_screenshakeOn, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_screenshakeOff, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
					}
										
					if (global.assistedAim)
					{
						draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
					}
					
					if (global.assistSlowmoIsOn)
					{
						draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)
					}
					
					draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+290,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_emergencyExplic, 2,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+340,0.75,0.75,0,image_blend, image_alpha)
				
				}break;
			
				case 3:
				{
					
					if (global.screenshakeIsOn)
					{
						draw_sprite_ext(s_screenshakeOn, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_screenshakeOff, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
					}
										
					if (global.assistedAim)
					{
						draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
					}
					
					if (global.assistSlowmoIsOn)
					{
						draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
					}
					
					draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1.2,1.2,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+290,1,1,0,image_blend, image_alpha)
					

				}break;
				
				case 4:
				{					
					if (global.screenshakeIsOn)
					{
						draw_sprite_ext(s_screenshakeOn, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_screenshakeOff, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
					}
										
					if (global.assistedAim)
					{
						draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
					}
					
					if (global.assistSlowmoIsOn)
					{
						draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
					}
					
					draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1.2,1.2,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+290,1,1,0,image_blend, image_alpha)
				}break;
				
				case 5:
				{
					
					if (global.screenshakeIsOn)
					{
						draw_sprite_ext(s_screenshakeOn, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_screenshakeOff, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
					}
										
					if (global.assistedAim)
					{
						draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
					}
					
					if (global.assistSlowmoIsOn)
					{
						draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
				
					}else
					{
						draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
					}
					draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
					
					draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)
					
					if (quit == false)
					{
						draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+290,1.2,1.2,0,image_blend, image_alpha)
					}
					else
					{
						draw_sprite_ext(s_sureMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+290,1.2,1.2,0,image_blend, image_alpha)
					}
					
				}break;
			}
		}
	}
}
}

