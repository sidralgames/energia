/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();

if (global.chargingEnergy)
{
	if (charge <= 300)
	{
		charge+=1;
	}
	draw_sprite_ext(s_enchufeChargeHP_Out,0,x-14,y-27,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_In,0,x-14,y-27,(charge/maxCharge),1,0,image_blend, image_alpha)
}


