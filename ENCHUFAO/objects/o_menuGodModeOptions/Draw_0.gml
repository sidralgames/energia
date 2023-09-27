/// @description Insert description here
// You can write your code in this editor
	if (global.infiniteAmmoIsOn)
	{
		s_ammo = s_infiniteAmmo_MenuOn;	
	}
	else
	{
		s_ammo = s_infiniteAmmo_MenuOff;
	}
	
	if (global.infiniteEnergyIsOn)
	{
		s_energy = s_infiniteEnergy_MenuOn;	
	}
	else
	{
		s_energy = s_infiniteEnergy_MenuOff;
	}
	
	if (global.infiniteLaserIsOn)
	{
		s_laser = s_infiniteLaser_MenuOn;	
	}
	else
	{
		s_laser = s_infiniteLaser_MenuOff;
	}
	
	if (global.infiniteHPIsOn)
	{
		s_hp = s_infiniteHP_MenuOn;	
	}
	else
	{
		s_hp = s_infiniteHP_MenuOff;
	}
	

if (_visible)
{
	switch(selected)
	{
		case 0:
		{
			draw_sprite_ext(s_energy, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_ammo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_laser, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_hp, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 1:
		{
			draw_sprite_ext(s_energy, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_ammo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_laser, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_hp, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 2:
		{
			draw_sprite_ext(s_energy, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_ammo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_laser, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1.2,1.2,0,image_blend, image_alpha)	
			draw_sprite_ext(s_hp, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		
		case 3:
		{
			draw_sprite_ext(s_energy, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_ammo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_laser, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_hp, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1.2,1.2,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)	
		}break;
		case 4:
		{
			draw_sprite_ext(s_energy, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_ammo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_laser, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+240,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_hp, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+280,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_backMenu, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1.2,1.2,0,image_blend, image_alpha)	
		}break;
	
	}
}



