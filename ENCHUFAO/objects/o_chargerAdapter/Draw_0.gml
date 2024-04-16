/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index,image_index, x,y, scale, scale, _angle, image_blend, image_alpha)


if instance_exists(o_playerShip)
{
	if (overAdapter)
	{
		if (radi > 12)
		{
			radi-=0.5;
		}
		else
		{
			radi = radCol;
		}
	
		draw_set_color(c_white)
		draw_circle(x, y, radi+0.5, true)
		draw_circle(x, y, radi, true)
		draw_circle(x, y, 12, true)
		draw_circle(x, y, 12.3, true)
	}
}









