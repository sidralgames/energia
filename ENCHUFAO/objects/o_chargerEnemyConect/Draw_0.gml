/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(enemy)
{
	if (enemy.plugged)
	{
		enchufe = instance_nearest(x,y,o_enchufeStandard_Father)
		draw_sprite_ext(s_chargerPlugged, 0, enchufe.x, enchufe.y, image_xscale, image_yscale, enchufe._angle+90, image_blend, image_alpha)
	}
	else
	{
		draw_self();	
	}
}