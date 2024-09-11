

viewWidthHalf= camera_get_view_width(view_camera[0]) * 0.5;
viewHeightHalf= camera_get_view_height(view_camera[0]) * 0.5;

//application_surface_enable(false)
//camera_set_view_pos(view_camera[0],0,-8);

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



