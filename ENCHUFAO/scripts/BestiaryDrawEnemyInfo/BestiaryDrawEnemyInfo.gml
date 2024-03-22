// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawEnemyInfo()
{
	//------- TEXTO BESTIARIO ------//
	draw_set_halign(fa_center);
	draw_set_font(global.customFont12);
	
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+190+initialXText,__view_get( e__VW.YView, 0 )+InitialYText+1-(enemy.lines*8), string(enemy.textBestiary))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+191+initialXText,__view_get( e__VW.YView, 0 )+InitialYText-(enemy.lines*8), string(enemy.textBestiary))
	
	//------- KILLS & KILLED BY ------//
	draw_set_halign(fa_right);
	draw_set_font(global.customFont14);
		
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )-120+initialXText,__view_get( e__VW.YView, 0 )+InitialYText-19, string(enemy.killsText))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )-119+initialXText,__view_get( e__VW.YView, 0 )+InitialYText-20, string(enemy.killsText))
		
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )-120+initialXText,__view_get( e__VW.YView, 0 )+InitialYText+11, string(enemy.killedByText))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )-119+initialXText,__view_get( e__VW.YView, 0 )+InitialYText+10, string(enemy.killedByText))
}