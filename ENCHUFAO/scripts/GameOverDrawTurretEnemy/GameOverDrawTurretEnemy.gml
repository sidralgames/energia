// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawTurretEnemy(_name, _info, _range)
{
	
	if (deathCounted = false)
	{
		deathCounted = true;
		enemy.killedByNum+=1;
	}
	
	if (wallMouth = false)
	{
		wallMouth = true;
		wall = instance_create_layer(__view_get( e__VW.XView, 0 )+317,__view_get( e__VW.YView, 0 )+245,"PauseHUE_Sub",o_wallGameOver);
		wall.image_index = 1;
	}
		
	draw_set_color(global.brightRed);
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+256, _name);

	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+255, _name);
		
	draw_set_font(global.customFont12);
		
	if (tipChoosed = false)
	{
		tipChoosed = true;
		tip = _range;
	}
	
	_info(tip);
	
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+281, string(text))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280, string(text))
}