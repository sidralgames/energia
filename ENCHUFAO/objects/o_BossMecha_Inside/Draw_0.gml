/// @description Insert description here
// You can write your code in this editor
rojoosc= make_colour_rgb(255,0,68);

if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,flashAlpha)
	shader_reset()
}

if (burned)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,rojoosc,0.5)
}


if (burnFlash>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,rojoosc,burnFlash)
	shader_reset()
}




