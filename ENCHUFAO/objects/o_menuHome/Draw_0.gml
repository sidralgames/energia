/// @description Insert description here
// You can write your code in this editor

if instance_exists(o_playerShip)
{
	draw_sprite_ext(s_bosses, 1,  __view_get( e__VW.XView, 0 )+ 550,__view_get( e__VW.YView, 0 )+20,1.2,1.2,0,image_blend, image_alpha)
}
if (_visible)
{
	if (global.mandatoryTutorial = 0)
	{
		switch(selected)
		{
			case 0:
			{
				draw_sprite_ext(s_TutorialHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)	
			}break;
		
			case 1:
			{
				draw_sprite_ext(s_TutorialHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_optionsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)	
			}break;
		
			case 2:
			{
				draw_sprite_ext(s_TutorialHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_statsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)	
			}break;
		
			case 3:
			{
				draw_sprite_ext(s_TutorialHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
				draw_sprite_ext(s_quitHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1.2,1.2,0,image_blend, image_alpha)	
			}break;
		}
	}
	else
	{
		draw_set_halign(fa_center)
		switch(selected)
		{
			case 0:
			{
				initialPlay = lerp(initialPlay, 185,factor);
				initialTut = lerp(initialTut, 240,factor);
				initialOption = lerp(initialOption, 270 ,factor)
				initialStat =  lerp(initialStat, 295,factor);
				initialQuit = lerp(initialQuit, 320,factor);
				
				draw_sprite_ext(s_playHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,1.2,1.2,0,image_blend, image_alpha)
				draw_sprite_ext(s_TutorialHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.9,0.9,0,image_blend,  0.8)	
				draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 1:
			{
				initialPlay = lerp(initialPlay, 170,factor);
				initialTut = lerp(initialTut, 210,factor);
				initialOption = lerp(initialOption, 279 ,factor)
				initialStat =  lerp(initialStat, 305,factor);
				initialQuit = lerp(initialQuit, 330,factor);
				
				draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.8,0.8,0,image_blend,  0.8)
				draw_sprite_ext(s_TutorialHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 2:
			{
				initialPlay = lerp(initialPlay, 165,factor);
				initialTut = lerp(initialTut, 188,factor);
				initialOption = lerp(initialOption, 232 ,factor)
				initialStat =  lerp(initialStat, 307,factor);
				initialQuit = lerp(initialQuit, 335,factor);
				
				draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.7,0.7,0,image_blend,  0.8)
				draw_sprite_ext(s_TutorialHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_optionsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.7,0.7,0,image_blend,  0.8)	
			}break;
		
			case 3:
			{
				initialPlay = lerp(initialPlay, 160,factor);
				initialTut = lerp(initialTut, 182,factor);
				initialOption = lerp(initialOption, 205 ,factor)
				initialStat =  lerp(initialStat, 245,factor);
				initialQuit = lerp(initialQuit, 330,factor);
				
				draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_TutorialHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.6,0.6,0,image_blend, 0.8)	
				draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_statsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,1.2,1.2,0,image_blend,  image_alpha)	
				draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.8,0.8,0,image_blend,  0.8)		
			}break;
			
			case 4:
			{
				initialPlay = lerp(initialPlay, 155,factor);
				initialTut = lerp(initialTut, 175,factor);
				initialOption = lerp(initialOption, 197 ,factor)
				initialStat =  lerp(initialStat, 220,factor);
				initialQuit = lerp(initialQuit, 270,factor);
				
				draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_TutorialHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.6,0.6,0,image_blend,  0.8)	
				draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quitHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,1.2,1.2,0,image_blend, image_alpha)		
			}break;
		}
	}
}



