// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawPaginator(_font, _color, _alpha)
{
	draw_set_alpha(_alpha)
	draw_set_halign(fa_center);
	draw_set_font(_font);
	draw_set_color(_color);
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+131,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+130,string(selectedBest+1) + " / " + string(global.differentEnemiesTotal));

}