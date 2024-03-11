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
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 1:
		{
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 2:
		{
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 3:
		{
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1.2,1.2,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		case 4:
		{
			draw_sprite_ext(s_controlsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_gameSettingsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_creditsMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(spriteGOD, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1.2,1.2,0,image_blend, image_alpha)	
		}break;
	
	}
}



