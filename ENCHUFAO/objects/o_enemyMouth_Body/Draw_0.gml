/// @description Draw the simulation
if (inScreen)
{
	if (_color = global.darkPalette)
	{	
		draw_set_color(global.darkPalette);
		
		draw_set_alpha(0.8);
	}
	
	if instance_exists(inst)
	{
		draw_set_alpha(inst.image_alpha);
		
		if (verletSystemExists(verletSystem1)) 
		{
			verletSystem1.draw();
		}
		
		draw_set_alpha(1);
	}
}