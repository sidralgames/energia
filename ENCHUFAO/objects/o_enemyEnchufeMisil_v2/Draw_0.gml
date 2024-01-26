/// @description Insert description here
// You can write your code in this editor

if state = ENEMYSTATE.PLUGGED
{
	draw_sprite_ext(sprite_index, image_index, enchufe.x, enchufe.y,1,1,enchufe.image_angle,image_blend,image_alpha)
}
else
{
	draw_sprite_ext(sprite_index, image_index,x,y,1,1,_angle,image_blend,image_alpha)
	
}
if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_white,flashAlpha)
	shader_reset()
}


