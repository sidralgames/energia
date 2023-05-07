/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center)
if gamepad_is_connected(0)
{
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+200,"X para enchufarte/desenchufarte")
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+230,"Enchufate para empezar")
}
else
{
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+200,"Boton Raton Derecho para enchufarte/desenchufarte")
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+230,"Enchufate para empezar")
}



