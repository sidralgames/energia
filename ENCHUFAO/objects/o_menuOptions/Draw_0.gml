/// @description Insert description here
// You can write your code in this editor
	
if (global.godModeIsOn)
{
	spriteGOD = s_godMode_OnMenu;	
}
else
{
	spriteGOD = s_godMode_OffMenu;
}
	

if (_visible)
{
	switch(selected)
	{
		case 0:
		{
			
			initialCon = lerp(initialCon, 180,factor);
			initialSett = lerp(initialSett, 250,factor);
			initialCred = lerp(initialCred, 280 ,factor)
			initialGod=  lerp(initialGod, 305,factor);
			initialBack = lerp(initialBack, 327,factor);
		
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.9,0.9,0,image_blend, 0.8)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.8,0.8,0,image_blend, 0.8)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.7,0.7,0,image_blend, 0.8)	
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend, 0.8)	
		}break;
		
		case 1:
		{
			initialCon = lerp(initialCon, 170,factor);
			initialSett = lerp(initialSett, 210,factor);
			initialCred = lerp(initialCred, 285 ,factor)
			initialGod=  lerp(initialGod, 310,factor);
			initialBack = lerp(initialBack, 330,factor);
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.8,0.8,0,image_blend, 0.8)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.8,0.8,0,image_blend, 0.8)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.7,0.7,0,image_blend, 0.8)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend, 0.8)	
		}break;
		
		case 2:
		{
			initialCon = lerp(initialCon, 160,factor);
			initialSett = lerp(initialSett, 185,factor);
			initialCred = lerp(initialCred, 226 ,factor)
			initialGod=  lerp(initialGod, 300,factor);
			initialBack = lerp(initialBack, 320,factor);
			
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.7,0.7,0,image_blend, 0.8)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.8,0.8,0,image_blend, 0.8)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.7,0.7,0,image_blend, 0.8)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend, 0.8)	
		}break;
		
		case 3:
		{
			initialCon = lerp(initialCon, 155,factor);
			initialSett = lerp(initialSett, 176,factor);
			initialCred = lerp(initialCred, 200 ,factor)
			initialGod=  lerp(initialGod, 239,factor);
			initialBack = lerp(initialBack, 305,factor);
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.6,0.6,0,image_blend, 0.8)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.6,0.6,0,image_blend, 0.8)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.7,0.7,0,image_blend, 0.8)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,1.2,1.2,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.7,0.7,0,image_blend, 0.8)	
		}break;
		
		case 4:
		{
			initialCon = lerp(initialCon, 150,factor);
			initialSett = lerp(initialSett, 170,factor);
			initialCred = lerp(initialCred, 195 ,factor)
			initialGod=  lerp(initialGod, 220,factor);
			initialBack = lerp(initialBack, 280,factor);
			
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.6,0.6,0,image_blend, 0.8)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.6,0.6,0,image_blend, 0.8)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.7,0.7,0,image_blend, 0.8)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.7,0.7,0,image_blend, 0.8)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,1.2,1.2,0,image_blend, image_alpha)	
		}break;
	
	}
}



