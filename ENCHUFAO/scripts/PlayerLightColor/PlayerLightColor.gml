// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerLightColor()
{
	with(o_playerShip)
	{
	
		if (key_l3Dowm)
		{
			if (global.energy > 0)
			{	
				global.energy -= 0.1;
				angOff = max(0, global.energy*0.05) + 5;
			
				alphaFocosColor = lerp(alphaFocosColor, 0.05, 0.04);
				draw_set_alpha(alphaFocosColor)
				draw_triangle_color(x-lengthdir_x(iniLightOff,_angle-90), y-lengthdir_y(iniLightOff, _angle-90), x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff), x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff), colorLaser, colorLaser, colorLaser, false);
				draw_triangle_color(x-lengthdir_x(iniLightOff,_angle+90), y-lengthdir_y(iniLightOff, _angle+90), x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff), x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff), colorLaser, colorLaser, colorLaser, false);
				draw_set_alpha(1)
			}
		}
		else
		{
			angOff = max(0, global.energy*0.05);
			alphaFocosColor = global.alphaFocosColor;
		}
	
		if (global.energy <= 0)
		{
			off = random_range(0.05, -0.05);
			if (contLight <= 10)
			{
				draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle+90), y+lengthdir_y(5, _angle+90), 0.1+off, 0.1+off, 0, global.lightBlue, 0.5 + off);
			}
			else
			{
				draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle-90), y+lengthdir_y(5, _angle-90), 0.1+off, 0.1+off, 0, global.brightRed, 0.5 + off);
			}
		}
	}
	
	with(o_shield)
	{
		off = random_range(0.03, -0.03);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.2+off, 0.2+off, 0, global.lightBlue, 0.3);
	}
	
	with(o_ShieldpickUp)
	{
		off = random_range(0.03, -0.03);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.1+off, 0.1+off, 0, global.lightBlue, 0.25);
	}

}