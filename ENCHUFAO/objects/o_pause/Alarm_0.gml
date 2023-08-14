/// @description Insert description here
// You can write your code in this editor

if (!pause)
	{
		pause = true;
		instance_activate_object(o_pauseMenu);
		instance_deactivate_all(true);
		instance_activate_object(o_pauseMenu);
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		if (buffer_exists(pauseSurfBuffer))
		{
			buffer_delete(pauseSurfBuffer)
		}
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf,0);
	}
	else
	{
		pause = false;
		instance_activate_all();
		instance_deactivate_object(o_pauseMenu);
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}

