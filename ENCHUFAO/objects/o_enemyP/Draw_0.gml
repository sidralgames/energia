/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_white,image_alpha);

if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_white,flashAlpha)
	shader_reset()
}

//draw_text(x, y-40, string(_hp))


