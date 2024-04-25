/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (surface_exists(light_surf))
{
	
	surface_set_target(light_surf);
	draw_clear(c_black);
	
	
	
	with(o_bulletPlayerP)
	{
		off = random_range(0.06, -0.06);
		
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(s_bulletLight, 0, x, y, 1+off, 1+off, direction, c_white, 1)
		
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(s_bulletLight, 0, x, y, 1+off, 1+off, direction, c_white, 0.7)
		
	}
	
	with(o_enchufeStandard_Father)
	{
		if (soundActive = true)
		{
			off = random_range(0.06, -0.06);

			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(s_lightBulb, 0, x, y, 0.7+off, 0.7+off, 0, c_white, 1)

			gpu_set_blendmode(bm_add);
			draw_sprite_ext(s_lightBulb, 0, x, y, 0.7+off, 0.7+off, 0, c_white, 0.2)
		}
	}
	
	
	with(o_playerShip)
	{
		off = random_range(0.06, -0.06);
		
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(s_lightBulb, 0, x, y, 1+off, 1+off, 0, c_white, 1)
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(s_lightBulb, 0, x, y, 1+off, 1+off, 0, c_white, 0.2)
	}
	
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(light_surf, 0, 0, 1, 1, 0, c_white, _darkness)
	
}
else
{
	light_surf = surface_create(room_width, room_height);
}








