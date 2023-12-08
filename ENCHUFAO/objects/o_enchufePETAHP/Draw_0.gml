/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
if (petaActive) //&& (o_playerShip.pluggedTimer < 200)
{
	if (charge <= 300)
	{
		charge+=1;
	}
draw_sprite_ext(s_enchufeChargeHP_Out,0,x-21,y-27,1*0.5,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_In,0,x-21,y-27,(charge/maxCharge)*0.5,1,0,image_blend, image_alpha)
}
}


