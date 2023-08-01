/// @description Insert description here
// You can write your code in this editor
if set = true
{
draw_sprite_ext(sprite, image_index,x,y,xscale,yscale,_angle,image_blend, image_alpha)
}


if (connectedToEnchufe)
{
	if instance_exists(o_cableStrandedShip)
	{
		StrandedShip_CheckEnchufe();
	}
}