/// @description Insert description here
// You can write your code in this editor




if instance_exists(o_playerShip)
{
	canBeEnchufated = true
	if (charging) && (o_playerShip.plugged)
	{
		if (charge <= 200)
		{
			charge+=30;
		}
		draw_sprite_ext(s_enchufeChargeHP_Out,0,x-42,y-30,1,1,0,image_blend, image_alpha)
		draw_sprite_ext(s_enchufeChargeHP_In,0,x-42,y-30,(charge/maxCharge),1,0,image_blend, image_alpha)
	}

	if (charge >= 200)
	{
		o_enchufe_Final.abierto = true;

	}
}

// Inherit the parent event
event_inherited();

