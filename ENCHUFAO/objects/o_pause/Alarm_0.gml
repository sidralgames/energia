/// @description Insert description here
// You can write your code in this editor

if (!pause)
	{
		
		info = irandom(9);
		pause = true;
		spriteBack=0;
		selected=0;
		instance_activate_object(o_pauseMenu);
		instance_deactivate_all(true);
		instance_activate_object(o_pauseMenu);
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
	}
	else
	{
		
		pause = false;
		selected=0;
		spriteBack=0;
		goToMenu=false;
		instance_activate_all();
		o_main.isPaused = false;
		instance_deactivate_object(o_pauseMenu);
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
	}

