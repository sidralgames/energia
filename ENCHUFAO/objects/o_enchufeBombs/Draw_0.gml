/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
	
	if (global.chargingBombs) && (charging) && (global.bombAmmo < global.bombAmmoMax) && (bombsInEnchufe > 0)
	{
		if (charge <= 120)
		{
			charge+=1;
		}
		
		draw_sprite_ext(s_enchufeChargeHP_Out,0,x-21,y-30,1*0.5,1,0,image_blend, image_alpha);
		draw_sprite_ext(s_enchufeChargeHP_In,0,x-21,y-30,(charge/maxCharge)*0.5,1,0,image_blend, image_alpha);
	}

	if (charge >= 120)
	{
		charge = 0;
		bombsInEnchufe -=1;
		if (global.bombAmmo < global.bombAmmoMax)
		{
			global.bombAmmo += 1;
		}
	}
}

if (bombsInEnchufe <= 5) && !(charging)
{
	bombsInEnchufe += 0.005;
}

if (bombsInEnchufe <= 5) || (charging)
{
	for (var i = 0; i < floor(bombsInEnchufeMax); i++)
	{
		draw_sprite_ext(s_bombAmmoEnchufe, 1, x-16+(8*i), y-40,  1,1.2, 0, image_blend, image_alpha)	
	}
	
	for (var i = 0; i < floor(bombsInEnchufe); i++)
	{
		draw_sprite_ext(s_bombAmmoEnchufe, 0, x-16+(8*i), y-40,  1,1.2, 0, image_blend, image_alpha)	
	}
}