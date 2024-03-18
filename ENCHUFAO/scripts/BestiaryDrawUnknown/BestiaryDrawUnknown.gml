// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawUnknown()
{
	part_type_alpha2(global.EnemyKilledBy_part, 0,0);
			
	BestiaryDrawPaginator(global.customFont14, global.brightRed, 1);
	
	draw_set_alpha(alphaInfo)
	
	draw_sprite_ext(s_interrog, image_index, __view_get( e__VW.XView, 0 )+initialXInterrog,__view_get( e__VW.YView, 0 )+210, 1,1,0,image_blend, alphaInfo)
	
	draw_set_color(global.brightRed);
	draw_text(__view_get( e__VW.XView, 0 )-1+initialXInterrog,__view_get( e__VW.YView, 0 )+241,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
	draw_set_color(c_white);
	draw_text(__view_get( e__VW.XView, 0 )+initialXInterrog,__view_get( e__VW.YView, 0 )+240,"Killed: " + string(enemy.killsNum) + "/" + string(enemy.killsToUnlock));
	
	for (var i=0; i<2; i++)
	{
		draw_set_font(global.customFont16);
		draw_set_color(global.brightRed);
		draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151 + (i*110),"??? ?? ???");
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),"??? ?? ???");
	}
}