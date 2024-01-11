// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UIPlayerDamage()
{
	if instance_exists(o_playerShip)
	{
		if (o_playerShip.tocado) && (o_playerShip.alarm[4] > 4)
		{
			draw_set_color(global.red);
			draw_set_alpha(0.35);
			draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false);
			draw_set_color(c_white);
			draw_set_alpha(1);
		}
	}
}