/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+150, "Graphics: " + string(graphics))


if surface_exists(global.mainSurf)
{
	draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+170, "w: " + string(surface_get_width(global.mainSurf)))
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+190, "h: " + string(surface_get_height(global.mainSurf)))

}