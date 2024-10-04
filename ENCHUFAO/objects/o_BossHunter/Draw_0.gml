/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if state = ENEMYSTATE.CHASING
{
	draw_sprite_ext(idleSprite,image_index,x,y,image_xscale,image_yscale,_angle,image_blend,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,image_blend,image_alpha);
}
DrawStatusConditionEnemies(_angle);