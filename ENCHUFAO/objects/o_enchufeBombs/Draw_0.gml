/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
if (global.chargingBombs) && (charging) && (global.bombAmmo < global.bombAmmoMax)
	&& (o_playerShip.pluggedTimer < 200)
{
	if (charge <= 180)
	{
		charge+=1;
	}
	draw_sprite_ext(s_enchufeChargeHP_Out,0,x-21,y-30,1*0.5,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_In,0,x-21,y-30,(charge/maxCharge)*0.5,1,0,image_blend, image_alpha)
}

if (charge >= 180)
{
	charge = 0;
	if (global.bombAmmo < global.bombAmmoMax)
	{
		global.bombAmmo += 1;
	}
}
}

