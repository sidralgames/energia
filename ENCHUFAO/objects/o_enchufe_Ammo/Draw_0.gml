/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
if (global.chargingAmmo) && (!global.pluggedInAmmo) && (charging)
	&& (o_playerShip.pluggedTimer < 200)
{
	if (charge <= 200)
	{
		charge+=1;
	}
	draw_sprite_ext(s_enchufeChargeHP_Out,0,x-42,y-30,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_In,0,x-42,y-30,(charge/maxCharge),1,0,image_blend, image_alpha)

	
}

if (charge >= 200)
{
	global.pluggedInAmmo = true;
}
}

//CheckBatteryToDraw(global.enchufeAmmoUpgradesList, global.enchufeAmmoUpgradesNum)
