/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




if instance_exists(o_playerShip)
{
	canBeEnchufated = true
	if (charging) && (o_playerShip.plugged)
	{
		if (charge <= 200)
		{
			charge+=30;
		}
		if (charge < 200)
		{
			draw_sprite_ext(s_enchufeChargeHP_Out,0,x-42,y-90,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_enchufeChargeHP_In,0,x-42,y-90,(charge/maxCharge),1,0,image_blend, image_alpha)
		}
	}

	if (charge >= 200)
	{
		o_enchufe_Final.abierto = true;

	}
}

draw_sprite_ext(sprite_index,image_index, x,y, scale, scale, _angle, image_blend, image_alpha)




