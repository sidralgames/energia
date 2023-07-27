/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite, image_index,x,y,1,1,_angle,image_blend, image_alpha)

if (connectedToEnchufe) && (!unlocked)
{
	if (charge <= maxCharge)
	{
		charge+=1;
	}
	draw_sprite_ext(s_enchufeChargeHP_Out,0,x-14,y-30,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_In,0,x-14,y-30,(charge/maxCharge),1,0,image_blend, image_alpha)
}
