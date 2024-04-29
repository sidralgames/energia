/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (surface_exists(light_surf))
{
	
	surface_set_target(light_surf);
	draw_clear(c_black);
	
	with(o_playerShip)
	{
		off = random_range(0.02, -0.02);
		maxLenght = 600;
		angOff = max(0, global.energy*0.05)
		iniOff = 7

		gpu_set_blendmode(bm_subtract);
		draw_set_alpha(0.1)
		draw_triangle_color(x-lengthdir_x(iniOff,_angle-90), y-lengthdir_y(iniOff, _angle-90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_black, c_black, c_black, false);
		draw_triangle_color(x-lengthdir_x(iniOff,_angle+90), y-lengthdir_y(iniOff, _angle+90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_black, c_black, c_white, false);
		draw_set_alpha(0.1)
		gpu_set_blendmode(bm_normal);
		draw_triangle_color(x-lengthdir_x(iniOff,_angle-90), y-lengthdir_y(iniOff, _angle-90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_black, c_black, c_black, false);
		draw_triangle_color(x-lengthdir_x(iniOff,_angle+90), y-lengthdir_y(iniOff, _angle+90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_black, c_black, c_white, false);

	
	}
	
	with(o_bulletPlayerP)
	{
		if (hpBullet < 190)
		{
			off = random_range(0.06, -0.06);
			
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(s_bulletLight, 0, x, y, 1+off, 1+off, direction, c_white, 0.3)
		}
	}
	
	with(o_enchufeStandard_Father)
	{
		if (soundActive = true)
		{
			off = random_range(0.02, -0.02);
		
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(s_lightBulb_Big, 0, x, y, 1.5+off, 1.5+off, 0, c_white, 0.1);
			draw_sprite_ext(s_lightBulb_Big, 0, x, y, 0.15+off, 0.15+off, 0, global.lightBlue, 0.6);
		}
	}
	
	with(o_playerShip)
	{
		off = random_range(0.05, -0.05);
		
		draw_sprite_ext(s_lightBulb, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.05)
	}
	gpu_set_blendmode(bm_add)
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(light_surf, 0, 0, 1, 1, 0, c_white, darkness)
	
}
else
{
	light_surf = surface_create(room_width, room_height);
}








