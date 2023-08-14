/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

gpu_set_blendenable(false)


if (pause)
{
	instance_activate_object(o_pauseMenu);
	surface_set_target(application_surface);
	if (surface_exists(pauseSurf)) 
	{
		draw_surface(pauseSurf,0,0)	
	}
	else
	{
		
		 pauseSurf = surface_create(resW, resH);
		 buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	surface_reset_target();
	
	
}

if (key_start)
{
	instance_activate_object(o_pauseMenu);
	alarm[0] = 2;
}


gpu_set_blendenable(true)




