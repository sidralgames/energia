// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LowEnergyWarning()
{
	if (room != Sala_Inicio) && (room != Sala_Tutorial) && !instance_exists(o_gameOver)
	{
		draw_set_font(global.customFont16);
		
		if (global.energy <= global.energyLow)
		{
			if (global.PETAAmmo > 0)
			{
				if (alarm[0] <30)
				{
					draw_sprite_ext(s_throwPeta, 0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+310, 0.9, 0.9,image_angle, image_blend, 0.8);
				}
	
				if (alarm[0] <= 0)
				{
					alarm[0] = 40;	
				}
			}
			
			draw_set_color(global.red);
			draw_set_alpha(0.05);
			draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false);
			draw_set_color(c_white);
		}

		draw_set_alpha(1);
	}
}