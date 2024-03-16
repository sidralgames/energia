/// @description Insert description here
// You can write your code in this editor

if (alphaOptions < 1)
{
	alphaOptions +=0.05;
}

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
			
			initialCon = lerp(initialCon, 170,factor);
			initialSett = lerp(initialSett, 225,factor);
			initialChill = lerp(initialChill, 250,factor);
			initialCred = lerp(initialCred, 275 ,factor)
			initialGod=  lerp(initialGod, 295,factor);
			initialBack = lerp(initialBack, 315,factor);
			
		
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,1.2,1.2,0,image_blend, min(alphaOptions,1))	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.7,0.7,0,image_blend,min(alphaOptions,0.8))	
			draw_sprite_ext(s_chillRoomOptions, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialChill,0.7,0.7,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.6,0.6,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.6,0.6,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.5,0.5,0,image_blend, min(alphaOptions,0.8))
		}break;
		
		case 1:
		{
			initialCon = lerp(initialCon, 160,factor);
			initialSett = lerp(initialSett, 200,factor);
			initialChill = lerp(initialChill, 255,factor);
			initialCred = lerp(initialCred, 280 ,factor)
			initialGod=  lerp(initialGod, 305,factor);
			initialBack = lerp(initialBack, 325,factor);
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.7,0.7,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,1.2,1.2,0,image_blend, min(alphaOptions,1))		
			draw_sprite_ext(s_chillRoomOptions, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialChill,0.7,0.7,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.6,0.6,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.6,0.6,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.5,0.5,0,image_blend, min(alphaOptions,0.8))
		}break;
		
		case 2:
		{
			initialCon = lerp(initialCon, 155,factor);
			initialSett = lerp(initialSett, 178,factor);
			initialChill = lerp(initialChill, 225,factor);
			initialCred = lerp(initialCred, 285 ,factor)
			initialGod=  lerp(initialGod, 310,factor);
			initialBack = lerp(initialBack, 330,factor);
			
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.7,0.7,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_chillRoomOptions, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialChill,1.2,1.2,0,image_blend, min(alphaOptions,1))		
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.7,0.7,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.6,0.6,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.5,0.5,0,image_blend, min(alphaOptions,0.8))	
		}break;
		
		case 3:
		{
			initialCon = lerp(initialCon, 150,factor);
			initialSett = lerp(initialSett, 170,factor);
			initialChill = lerp(initialChill, 192,factor);
			initialCred = lerp(initialCred, 240 ,factor)
			initialGod=  lerp(initialGod, 295,factor);
			initialBack = lerp(initialBack, 320,factor);
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.6,0.6,0,image_blend,min(alphaOptions,0.8))	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_chillRoomOptions, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialChill,0.7,0.7,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,1.2,1.2,0,image_blend, min(alphaOptions,1))		
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.7,0.7,0,image_blend,min(alphaOptions,0.8))
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
		}break;
		
		case 4:
		{
			initialCon = lerp(initialCon, 145,factor);
			initialSett = lerp(initialSett, 165,factor);
			initialChill = lerp(initialChill, 187,factor);
			initialCred = lerp(initialCred, 212 ,factor)
			initialGod=  lerp(initialGod, 252,factor);
			initialBack = lerp(initialBack, 329,factor);
			
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.6,0.6,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_chillRoomOptions, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialChill,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.7,0.7,0,image_blend, min(alphaOptions,0.8))
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,1.2,1.2,0,image_blend, min(alphaOptions,1))	
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.7,0.7,0,image_blend, min(alphaOptions,0.8))
		}break;
		
		case 5:
		{
			initialCon = lerp(initialCon, 142,factor);
			initialSett = lerp(initialSett, 162,factor);
			initialChill = lerp(initialChill, 184,factor);
			initialCred = lerp(initialCred, 208 ,factor)
			initialGod=  lerp(initialGod, 233,factor);
			initialBack = lerp(initialBack, 290,factor);
			
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCon,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialSett,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_chillRoomOptions, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialChill,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCred,0.6,0.6,0,image_blend, min(alphaOptions,0.8))	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGod,0.7,0.7,0,image_blend,min(alphaOptions,0.8))
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,1.2,1.2,0,image_blend, min(alphaOptions,1))		
		}break;
	
	}
	draw_set_alpha(1)
}



