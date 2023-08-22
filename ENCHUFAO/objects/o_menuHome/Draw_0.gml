/// @description Insert description here
// You can write your code in this editor


if (_visible)
{
	switch(selected)
	{
		case 0:
		{
			draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 1:
		{
			draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 2:
		{
			draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 3:
		{
			draw_sprite_ext(s_playHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_optionsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+260,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_quitHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+300,1.2,1.2,0,image_blend, image_alpha)	
		}break;
	
	}
}



