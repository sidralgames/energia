/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(s_bulletBossGarbanzoBomb, image_index, x, y, scale, scale, _angle, image_blend, image_alpha)

if (flashAlpha>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,_angle,c_white,flashAlpha)
	shader_reset()
}



