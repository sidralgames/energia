/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(worm) && (worm =! -1)
{
	if (worm.plugged)
	{
		enchufe = worm.enchufe;
	
		draw_sprite_ext(s_chargerPluggedWorm, 0, enchufe.x, enchufe.y, image_xscale, image_yscale, enchufe._angle-90, image_blend, image_alpha)
	}
	else
	{
		draw_self();
	}
}