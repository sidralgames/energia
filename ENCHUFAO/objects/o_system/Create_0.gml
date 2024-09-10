

viewWidthHalf= camera_get_view_width(view_camera[0]) * 0.5;
viewHeightHalf= camera_get_view_height(view_camera[0]) * 0.5;

window_set_fullscreen(true);


surface_resize(application_surface, display_get_width(),display_get_height());


camera_set_view_pos(view_camera[0],0,-8);

if file_exists("EnxufaoData.ini")
{
	LoadGame();
	global.EXISTE = true;
}
else
{
	global.EXISTE = false;
	LoadDefaultData();
}



