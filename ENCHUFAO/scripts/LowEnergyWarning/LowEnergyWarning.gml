// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LowEnergyWarning()
{
	if (room != Sala_Inicio)  && !instance_exists(o_gameOver)
	{
		draw_set_font(global.customFont16);
		
		if (global.energy <= global.energyLow)
		{
			imagePetaUI += 0.2;
			
			if (global.level = -2)
			{
			
				draw_sprite_ext(s_trowPetaUI, imagePetaUI,o_playerShip.x,o_playerShip.y+45, 0.6, 0.6,image_angle, image_blend, 1);
		
			}
			else
			{
				if (global.PETAAmmo > 0)
				{
					draw_sprite_ext(s_trowPetaUI, imagePetaUI,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+320, 0.9, 0.9,image_angle, image_blend, 1);
				}
			}
			contLowEnergy --;
			
			if (contLowEnergy <= 10)
			{
				draw_set_color(global.red);
				draw_set_alpha(0.1);
				draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false);
				draw_set_color(c_white);
			}
			if (contLowEnergy <= 0)
			{
				contLowEnergy = 30;
			}
		}

		draw_set_alpha(1);
	}
}