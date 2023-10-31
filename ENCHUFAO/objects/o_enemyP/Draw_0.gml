/// @description Insert description here
// You can write your code in this editor



draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,image_blend,image_alpha);

if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_white,flashAlpha)
	shader_reset()
}

if (burned)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,rojoosc,0.5)
}

if (electrocutated)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_yellow,0.62)
}

if (burnFlash>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,rojoosc,burnFlash)
	shader_reset()
}

if (electroFlash>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_yellow,electroFlash)
	shader_reset()
}

//draw_text(x, y-40, string(_hp))


