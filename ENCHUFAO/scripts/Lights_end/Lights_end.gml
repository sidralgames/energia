// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Lights_end()
{
	if (event_type == ev_draw) && (event_number == 0)
	{
		surface_reset_target();
		
		gpu_set_blendmode(bm_normal);
		
		surface_set_target(application_surface);
		
			gpu_set_blendmode_ext(bm_dest_color, bm_zero)
		
			draw_surface(oLight.light_surface, 0, 0)
			gpu_set_blendmode(bm_normal);
		
		surface_reset_target();
	}
}