/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("P"))
{
	if (state = playing)
	{
		surface_copy(pauseSurf,0,0,application_surface);
		if (buffer_exists(pauseSurfBuffer))
		{
			buffer_delete(pauseSurfBuffer)
		}
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf,0);
		
		instance_deactivate_all(true);
		state = paused;
	}
	else if (state = paused)
	{
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		state = playing;
		instance_activate_all();
		
	}
	
}




