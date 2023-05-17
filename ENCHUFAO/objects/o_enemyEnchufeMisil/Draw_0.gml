/// @description Insert description here
// You can write your code in this editor

if state = ENEMYSTATE.PLUGGED
{
	draw_sprite_ext(sprite_index, image_index, enchufe.x, enchufe.y,1,1,enchufe._angle,image_blend,image_alpha)
}
else
{
draw_self();
}


