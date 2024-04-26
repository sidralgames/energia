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
		angOff = 10
		iniOff = 8
	//var maxLenght_ = 640;
	
	//for(var i = 0; i < maxLenght_; i++)
	//{
	//	maxLenght = i ;
	//    var lx = x + lengthdir_x(i, _angle);
	//    var ly = y + lengthdir_y(i, _angle);
	//	collisionTile = tile_meeting(lx,ly,"Tiles");

	//	if (collisionTile) 
	//	{
	//		 maxLenght_=i
	//		 maxLenght = maxLenght_;
	//		 thisLenght = maxLenght;
			 
	//	}
	//}
		gpu_set_blendmode(bm_subtract);
		draw_set_alpha(0.15)
		draw_triangle_color(x-lengthdir_x(iniOff,_angle-90), y-lengthdir_y(iniOff, _angle-90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
		draw_triangle_color(x-lengthdir_x(iniOff,_angle+90), y-lengthdir_y(iniOff, _angle+90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
		draw_set_alpha(0.07)
		gpu_set_blendmode(bm_normal);
		draw_triangle_color(x-lengthdir_x(iniOff,_angle-90), y-lengthdir_y(iniOff, _angle-90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
		draw_triangle_color(x-lengthdir_x(iniOff,_angle+90), y-lengthdir_y(iniOff, _angle+90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
	
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
			off = random_range(0.05, -0.05);
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(s_lightBulb_Big, 0, x, y, 1+off, 1+off, 0, c_white, 0.2);
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(s_lightBulb, 0, x, y, 0.4+off, 0.4+off, 0, global.lightBlue, 0.2);
		}
	}
	
	with(o_playerShip)
	{
		off = random_range(0.05, -0.05);
		
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(s_lightBulb, 0, x, y, 0.8+off, 0.8+off, 0, c_white, 0.1)
	}
	
	
	
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(light_surf, 0, 0, 1, 1, 0, c_white, darkness)
	
}
else
{
	light_surf = surface_create(room_width, room_height);
}








