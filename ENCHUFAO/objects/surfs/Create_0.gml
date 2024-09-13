/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

camW = 640;
camH = 360;
display_reset(0, false)
//surface_resize(global.mainSurf, camW, camH)

if (application_surface_is_enabled())
{
	application_surface_enable(false)
}
//application_surface_draw_enable(false)
global.mainSurf = surface_create(camW, camH)

graphics = "4K"