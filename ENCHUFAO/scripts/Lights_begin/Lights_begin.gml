// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Lights_begin()
{
	if instance_exists(oLight)
	{
		_color = oLight.black;
		
		if (event_type == ev_draw) && (event_number == 0)
		{
			if (!surface_exists(oLight.light_surface))
			{
				oLight.light_surface = surface_create(room_width, room_height);
			}
		
			surface_set_target(oLight.light_surface);
		
			draw_clear_alpha(_color, 1.0);
		
			gpu_set_blendmode(bm_add);
		}
	}
}