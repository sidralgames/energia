/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (drawText) && (drawTextTime > 0)
{
	draw_set_alpha(0.97)
	draw_set_color(global.dark)
	draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+310,
	__view_get( e__VW.XView, 0 )+640, __view_get( e__VW.YView, 0 )+360,false)
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_font(global.customFont16)
	draw_set_color(global.lightBlue)
	draw_line_width(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+310,
	__view_get( e__VW.XView, 0 )+640, __view_get( e__VW.YView, 0 )+310,2)
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+316,string(infoToDraw))
	draw_set_color(c_white)
	draw_line_width(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+311,
	__view_get( e__VW.XView, 0 )+640, __view_get( e__VW.YView, 0 )+311,1)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+315,string(infoToDraw))
}
	
if instance_exists(o_enchufeUpgradeCapsule)
{
	if (drawTextPrev)
	{
		draw_set_alpha(0.97)
		draw_set_color(global.dark)
		draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+310,
		__view_get( e__VW.XView, 0 )+640, __view_get( e__VW.YView, 0 )+360,false)
		draw_set_alpha(1)
		draw_set_halign(fa_center)
		draw_set_font(global.customFont16)
		draw_set_color(global.lightBlue)
		draw_line_width(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+310,
		__view_get( e__VW.XView, 0 )+640, __view_get( e__VW.YView, 0 )+310,2)
		draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+316,string("Obtain a Random Upgrade"))
		draw_set_color(c_white)
		draw_line_width(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+311,
		__view_get( e__VW.XView, 0 )+640, __view_get( e__VW.YView, 0 )+311,1)
		draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+315,string("Obtain a Random Upgrade"))
	}
}





