/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();

if (global.chargingShield) && (!global.pluggedInShield) && (charging)
{
	if (charge <= 200)
	{
		charge+=1;
	}
	draw_sprite_ext(s_enchufeChargeHP_Out,0,x-14,y-30,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_In,0,x-14,y-30,(charge/maxCharge),1,0,image_blend, image_alpha)
}

if (charge >= 200)
{
	global.pluggedInShield = true;
}


