// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function StrandedShipLightWhite()
{
	with(o_strandedShip)
	{
		
		angOff = 15;
		lightLenght = 200;
		iniLightOff = 5

		if (!chargedInHp) || (!chargedInEnergy) || (!chargedInAmmo)
		{
			off = random_range(0.05, -0.05);
			if (contLight <= 10)
			{
				draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle+90), y+lengthdir_y(5, _angle+90), 0.1+off, 0.1+off, 0, c_white, 0.5 + off);
			}
			else
			{
				draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle-90), y+lengthdir_y(5, _angle-90), 0.1+off, 0.1+off, 0, c_white, 0.5 + off);
			}
		}
	
		if (shipReady)
		{
			off = random_range(0.05, -0.05);
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, _angle, c_white, 0.2);
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.15);
		
			//draw_set_alpha(0.2)
			//draw_triangle_color(x-lengthdir_x(iniLightOff,_angle-90), y-lengthdir_y(iniLightOff, _angle-90), x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff), x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff), c_white, c_white, c_white, false);
			//draw_triangle_color(x-lengthdir_x(iniLightOff,_angle+90), y-lengthdir_y(iniLightOff, _angle+90), x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff), x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff), c_white, c_white, c_white, false);
		
			//draw_set_alpha(1)
		
		
		}
	}
}