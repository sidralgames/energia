/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite_index,0,x-hspeed*11,y-vspeed*12,0.5,0.5,_angle,image_blend,0.15)

draw_sprite_ext(sprite_index,0,x,y,1,1,_angle,image_blend,1)

if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_white,flashAlpha)
	shader_reset()
}










