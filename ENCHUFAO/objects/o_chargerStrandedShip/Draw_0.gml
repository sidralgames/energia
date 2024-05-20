/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_playerShip)
{
	if instance_exists(myShip)
	{
		if (myShip.connectedToEnchufe)
		{
			if (enchufeSet = false)
			{
				enchufeSet = true;
				enchufe = o_playerShip.inEnchufe;
			}
	
			draw_sprite_ext(s_chargerPlugged, 0, enchufe.x, enchufe.y, 1, 1, enchufe._angle-90, image_blend, image_alpha);
	
		}
		else
		{
			draw_self();
		}
	}
}
else
{
	enchufeSet = false;
	draw_self();
}