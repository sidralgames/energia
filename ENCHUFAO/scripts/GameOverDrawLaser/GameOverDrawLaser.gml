// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawLaser(_name, _info, _range)
{
	drawsprite = false;
	depth = layer_get_depth("PauseHUE")-1;
	
	if (wallMouth = false)
	{
		wallMouth = true;
		laserGameOver = instance_create_layer(__view_get( e__VW.XView, 0 )+405,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_laserGameOver);
		wall = instance_create_layer(__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_wallGameOver);
		wall.image_index = 2;
		wall.image_angle = 270;
		wall2 = instance_create_layer(__view_get( e__VW.XView, 0 )+420,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_wallGameOver);
		wall2.image_index = 2;
		wall2.image_angle = 90;		
	}

	draw_set_font(global.customFont14);
	draw_set_color(global.brightRed);
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+276,string(_name));
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+275,string(_name));
		
	if (tipChoosed = false)
	{
		tipChoosed = true;
		tip = _range
	}
	
	_info(tip);
	
	draw_set_font(global.customFont12);
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+301, string(text))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+300, string(text))
}