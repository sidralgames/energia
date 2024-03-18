// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawEnemyInfo()
{
	draw_set_halign(fa_center);
	draw_set_font(global.customFont12);
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+190+initialXText,__view_get( e__VW.YView, 0 )+211-(enemy.lines*8), string(enemy.textBestiary))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+191+initialXText,__view_get( e__VW.YView, 0 )+210-(enemy.lines*8), string(enemy.textBestiary))
		
	draw_set_halign(fa_right);
	draw_set_font(global.customFont14);
		
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )-100+initialXText,__view_get( e__VW.YView, 0 )+191, string(enemy.kills))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )-99+initialXText,__view_get( e__VW.YView, 0 )+190, string(enemy.kills))
		
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )-99+initialXText,__view_get( e__VW.YView, 0 )+221, string(enemy.killedBy))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )-100+initialXText,__view_get( e__VW.YView, 0 )+220, string(enemy.killedBy))
}