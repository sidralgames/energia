/// @description Draw the simulation

if (_color = global.darkPalette)
{	
	draw_set_color(global.darkPalette)
}

if (verletSystemExists(verletSystem1)) 
{
	verletSystem1.draw();
}
