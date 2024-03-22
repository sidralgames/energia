/// @description Draw the simulation

if (_color = global.darkPalette)
	{	
		draw_set_color(global.darkPalette)
		draw_set_alpha(0.8)
	}
	


	if (verletSystemExists(verletSystem1)) 
	{
		verletSystem1.draw();
	}

