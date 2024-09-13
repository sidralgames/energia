/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//if !window_get_fullscreen()
//{
//	resizedWindow = false;
//}

//if (keyboard_check_pressed(ord("K"))) 
//{
//	resizedWindow = false;
//    surface_resize(global.mainSurf, display_get_width(),display_get_height());
//}

//if (keyboard_check_pressed(ord("H")))
//{
//	resizedWindow = false;
//    surface_resize(global.mainSurf, 1280,720);
//}
//if (keyboard_check_pressed(ord("L")))
//{
//	resizedWindow = false;
//    surface_resize(global.mainSurf, 640,360);
//}

if !surface_exists(global.mainSurf)
{
	global.mainSurf = surface_create(camW, camH)
}

if surface_get_width(global.mainSurf) = 1920
{
	graphics = "4K"
}
else if surface_get_width(global.mainSurf) = 1280
{
	graphics = "HD"
}
else
{
	graphics = "LOW"
}