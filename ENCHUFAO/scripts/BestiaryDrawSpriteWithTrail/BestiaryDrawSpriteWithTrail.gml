// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawSpriteWithTrail(argument0, argument1, argument2)
{
	draw_sprite_ext(argument0, image_index, __view_get( e__VW.XView, 0 )+initialX+argument1*xScale,__view_get( e__VW.YView, 0 )+initialY+argument2, xScale,1,0,image_blend, image_alpha)
	
	contParts --;
	if (contParts <=4)
	{
		part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+(initialX+argument1*xScale) - 4*xScale, __view_get( e__VW.YView, 0 )+initialY+argument2, global.EnemyKilledBy_part , 1)	
		contParts = contPartsInitial;
	}
}