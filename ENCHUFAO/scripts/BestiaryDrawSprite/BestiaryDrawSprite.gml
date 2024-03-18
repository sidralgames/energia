// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawSprite(argument0, argument1, argument2, argument3, argument4) //sprite,x,y,image_index,image_angle
{
	draw_sprite_ext(argument0, argument3, __view_get( e__VW.XView, 0 )+initialX+argument1*xScale,__view_get( e__VW.YView, 0 )+initialY+argument2, xScale,1,argument4,image_blend, image_alpha)
	
}