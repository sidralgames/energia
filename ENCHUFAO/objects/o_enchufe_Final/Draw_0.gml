/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_waller)
{
	if (o_waller.levelType != "Secret")
	{
		if ((room = Sala_0) || (room = Sala_Tutorial)) && (abierto = false) 
		{

			if (global.pluggedInEnergy)
			{
				draw_sprite_ext(s_bombillas, 0,x, y, 1,1,image_angle,image_blend, image_alpha)
			}
			if (global.pluggedInAmmo)
			{
				draw_sprite_ext(s_bombillas, 1,x, y, 1,1,image_angle,image_blend, image_alpha)
			}
			if (global.pluggedInLaser)
			{
				draw_sprite_ext(s_bombillas, 2,x, y, 1,1,image_angle,image_blend, image_alpha)
			}
			if (global.pluggedInHp)
			{
				draw_sprite_ext(s_bombillas, 3,x, y, 1,1,image_angle,image_blend, image_alpha)
			}
		}
	}
}

if (haveHPnow)
{
	for (var i = 0; i < floor(_hpMax/2); i++)
	{
		draw_sprite_ext(s_bombAmmoEnchufe, 1, x-26+(8*i), y-40,  1,1.1, 0, image_blend, image_alpha)	
	}
	
	for (var i = 0; i < floor(_hp/2); i++)
	{
		draw_sprite_ext(s_bombAmmoEnchufe, 0, x-26+(8*i), y-40,  1,1.1, 0, image_blend, image_alpha)	
	}
}