// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawSprite(argument0, argument1) //sprite,x,y,image_index,image_angle
{
	draw_sprite_ext(argument0, argument1, __view_get( e__VW.XView, 0 )+320, __view_get( e__VW.YView, 0 )+245+off, 1,1,0,image_blend, image_alpha)
	
}
