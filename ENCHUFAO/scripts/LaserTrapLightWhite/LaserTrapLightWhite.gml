// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LaserTrapLightWhite()
{
	with(o_laser)
	{
		off = random_range(0.02, -0.02);
	
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.25+off, 0.25+off, 0, c_white, 0.3 + off);
	
		if (laserActive) && (alarm[1] > 0)  && (colLaser)
		{
			if (face = 0)
			{
				draw_set_alpha(0.3+random(0.2))
				draw_circle_colour(x-1,y-7*image_yscale,(height*2)+6,blanco, blanco, false)
	
				draw_circle_colour(x-1,y-16-long*image_yscale,(height*2)+6,blanco, blanco, false)
	
				draw_set_color(blanco);
				draw_line_width(x-1, y-7*image_yscale, x-1, y-16-long*image_yscale, (height * 4) + 7);

				draw_set_alpha(1)
			}
			else if (face = 1)
			{
				draw_set_alpha(0.3+random(0.2))
				draw_circle_colour(x-7, y,(height*2)+6,blanco, blanco, false)
		
				draw_circle_colour(x-16-long, y, (height*2)+6,blanco, blanco, false)
		
				draw_set_color(blanco);
				draw_line_width(x-7,y, x-16-long, y, (height * 4) + 7);

				draw_set_alpha(1)	
			}
		}
	}
}