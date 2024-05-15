// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerLightWhite()
{
	with(o_playerShip)
	{
		if (laserActive)
		{
			draw_set_alpha(0.8)
			draw_circle_colour(x+lengthdir_x(10,_angle), y-1+lengthdir_y(10, _angle),(height*2)+blueWidht+0.5+global.laserWidth+global.amplifyPowerLaser+2,c_white, c_white, false)
			draw_circle_colour(x+lengthdir_x(maxLenght,_angle), y-1+lengthdir_y(maxLenght, _angle),(height*2)+blueWidht+2.5+global.laserWidth+global.amplifyPowerLaser,c_white, c_white, false)
			
			draw_line_width( x+lengthdir_x(13,_angle), y-1+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght,_angle), y-1+lengthdir_y(maxLenght, _angle),(height * 5) + blueWidht+2+global.laserWidth+global.amplifyPowerLaser+3);

			draw_set_alpha(1)
		}
		
		if (global.energy <= global.energyLow)
		{
			if (contLight <= 10)
			{
				draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(7, _angle+180), y+lengthdir_y(7, _angle+180), 0.1+off, 0.1+off, 0, c_white, 0.5 + off);
			}
		}
		
		if (global.energy <= 0) || (global.energy <= global.energyLow)
		{
			contLight --;
			
			if (contLight <= 0)
			{
				contLight = 20;
			}
		}
		
		if (global.energy <= 0)
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
	
		off = random_range(0.02, -0.02);
		
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.25);
		
		if (global.energy > 0)
		{
			draw_set_alpha(global.alphaFocos)
			draw_triangle_color(x-lengthdir_x(iniLightOff,_angle-90), y-lengthdir_y(iniLightOff, _angle-90), x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff), x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff), c_white, c_white, c_white, false);
			draw_triangle_color(x-lengthdir_x(iniLightOff,_angle+90), y-lengthdir_y(iniLightOff, _angle+90), x+lengthdir_x(lightLenght,_angle+angOff), y-1+lengthdir_y(lightLenght, _angle+angOff), x+lengthdir_x(lightLenght,_angle-angOff), y-1+lengthdir_y(lightLenght, _angle-angOff), c_white, c_white, c_white, false);
		}
		draw_set_alpha(1)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, _angle, c_white, 0.2);
	}
	
	with (o_bulletPlayer_Bomb)
	{
		off = random_range(0.04, -0.04);
		
		if (global.bombIsHomingBomb)
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.1+off, 0.1+off, 0, c_white, 0.25);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.3+off, 0.3+off, 0, c_white, 0.5);
		}
	}
	
	with(o_shield)
	{
		off = random_range(0.05, -0.05);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.4+off, 0.4+off, 0, c_white, 0.35);
	}
	
	with(o_chipFather)
	{
		offs = random_range(0.01, -0.01);
		draw_sprite_ext(s_lightBulb4, 0, x, y, .1+offs, .1+offs, 0, c_white, 0.3 + offs);
	}
}