/// @description Insert description here
// You can write your code in this editor


if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,flashAlpha)
	shader_reset()
}

if (burned)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.brightRed,0.5)
}


if (burnFlash>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.brightRed,burnFlash)
	shader_reset()
}




