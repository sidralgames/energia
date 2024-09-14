/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if window_get_fullscreen(){
    draw_surface_ext(application_surface,0,0,1,1,0,c_white,1);
} else {
    draw_surface(application_surface,0,0);
}
