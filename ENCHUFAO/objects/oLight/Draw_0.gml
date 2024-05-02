/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

	

	

	with(o_playerShip)
	{
		off = random_range(0.02, -0.02);
		maxLenght = 600;
		angOff = max(0, global.energy*0.05)
		iniOff = 7
		
		draw_sprite_ext(s_lightBulb, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.15);
		draw_set_alpha(0.25)
		draw_triangle_color(x-lengthdir_x(iniOff,_angle-90), y-lengthdir_y(iniOff, _angle-90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
		draw_triangle_color(x-lengthdir_x(iniOff,_angle+90), y-lengthdir_y(iniOff, _angle+90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
		draw_set_alpha(1)
	
	}
	
	with(o_enchufeStandard_Father)
	{
		
		if (enchufeActive) && (soundActive = false)
		{
			off = random_range(0.1, -0.1);
			
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1+off, 1+off, 0, c_white, 0.5);
			
		}
		
		if (soundActive = true)
		{
			off = random_range(0.1, -0.1);
			
			
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1.5+off, 1.5+off, 0, c_white, 0.75);
			gpu_set_blendmode(bm_normal);
			
			//draw_sprite_ext(s_lightBulb4, 0, x, y, 0.65+off, 0.65+off, 0, global.lightBlue, 0.5);
			
		}
	}
	
	with(o_enchufeBombs)
	{
		if (enchufeActive)
		{
			off = random_range(0.1, -0.1);
			
			
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1+off, 1+off, 0, c_white, 0.5);
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, global.lightBlue, 0.2);
			
		}
	}
	
	with(o_enchufePETA_Father)
	{
		if (enchufeActive)
		{
			off = random_range(0.1, -0.1);
			
			
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1+off, 1+off, 0, c_white, 0.5);
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, global.lightBlue, 0.2);
			
		}
	}






