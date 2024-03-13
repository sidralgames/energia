/// @description Insert description here
// You can write your code in this editor

if (_visible)
{
	
	if (global.screenshakeIsOn)
	{
		spriteShake = s_screenshakeOn;	
	}
	else
	{
		spriteShake = s_screenshakeOff;
	}
	
	draw_sprite_ext(s_gameSettingsMenu,0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+50,1,1,0,image_blend, image_alpha);
	
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
	
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1.2,1.2,0,image_blend, image_alpha)
										
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
			}
			else
			{
				draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
			}
					
			draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
					
			draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)
								
			draw_sprite_ext(s_emergencyExplic, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+340,0.75,0.75,0,image_blend, image_alpha)
					
		}break;
	
		case 1:
		{
		
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
									
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
			}
			else
			{
				draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
			}
				
			draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
			
			draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)
				
			draw_sprite_ext(s_emergencyExplic, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+340,0.75,0.75,0,image_blend, image_alpha)
			
		}break;
		
		case 2:
		{
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
									
			if (global.assistedAim)
			{
				draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
			}
			else
			{
				draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
			}
				
			if (global.assistSlowmoIsOn)
			{
				draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)
			}
			else
			{
				draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)
			}
				
			draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
				
			draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)
			
			draw_sprite_ext(s_emergencyExplic, 2,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+340,0.75,0.75,0,image_blend, image_alpha)
				
		}break;
			
		case 3:
		{
		
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
			
									
			if (global.assistedAim)
			{
				draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
			}
			else
			{
				draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
			}
				
			if (global.assistSlowmoIsOn)
			{
				draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
			}
			else
			{
				draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
			}
			
			draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1.2,1.2,0,image_blend, image_alpha)
				
			draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)
				
		}break;
				
		case 4:
		{					
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)
	
			if (global.assistedAim)
			{
				draw_sprite_ext(s_assistedAim, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
			}
			else
			{
				draw_sprite_ext(s_assistedAim, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)
			}
				
			if (global.assistSlowmoIsOn)
			{
				draw_sprite_ext(s_emergencySlowmo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
			
			}
			else
			{
				draw_sprite_ext(s_emergencySlowmo, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)
			}
				
			draw_sprite_ext(s_crosshairMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+210,1,1,0,image_blend, image_alpha)
				
			draw_sprite_ext(s_back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1.2,1.2,0,image_blend, image_alpha)
			
		}break;
	}
}



