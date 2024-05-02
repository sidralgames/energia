// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Lights_begin(){
	_color = iLight.black;
	if (event_type == ev_draw) && (event_number == 0)
	{
		if (!surface_exists(iLight.light_surface))
		{
			iLight.light_surface = surface_create(room_width, room_height);
		}
		
	
		
		surface_set_target(iLight.light_surface);
		
		
		
		draw_clear_alpha(_color, 1.0);
		
		
		gpu_set_blendmode(bm_add);
	}
}