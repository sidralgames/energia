// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BombKilledBy()
{
	off = 5;
	image_speed = 0.6;
	draw_set_color(global.brightRed);
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+271,"Explosion");

	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+270,"Explosion");
		
	draw_set_font(global.customFont12);
	if (tipChoosed = false)
	{
		tipChoosed = true;
		tip = irandom_range(0,7)
	}
	infoGameOverEnemyBombs(tip);
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+296, string(text))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+295, string(text))
}