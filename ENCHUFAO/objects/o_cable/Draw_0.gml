/// @description Draw the simulation

if (global.haveInvisibiltyCloak && global.invisibleCloak)
{
	_alpha = lerp(_alpha, 0.1, 0.1);
}
else
{
	_alpha = lerp(_alpha, 1, 0.05);
}

draw_set_alpha(_alpha);

if (verletSystemExists(verletSystem1)) 
{
	verletSystem1.draw();
}

draw_set_alpha(1);
