// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetEnemyBestiaryLocked(argument0, argument1, argument2) 
{
	draw_sprite_ext(argument0, image_index, __view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+220, xScale,1,0,argument1, argument2)
				
	contParts --;
	if (contParts <=0)
	{
		part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale, __view_get( e__VW.YView, 0 )+220, global.EnemyKilledBy_part , 1)
		contParts = contPartsInitial;
	}
				
	//for (var i=0; i<2; i++)
	//{
	//	draw_set_font(global.customFont16);
	//	draw_set_color(global.brightRed);
	//	draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151 + (i*110),string(enemy.alias));
	//	draw_set_color(c_white)
	//	draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),string(enemy.alias));
	//}
}