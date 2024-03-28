// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawWallEnemy(_name, _info, _range)
{
	if (wallMouth = false)
	{
		wall = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+262,"PauseHUE_Sub",o_wallGameOver);
		anchor = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+247,"PauseHUE",o_mouthAnchor);
		enemyMouth = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+217,"PauseHUE",o_enemy_Mouth);
			
		if (_name = "Pincher")
		{
			enemyMouth.isOnlyDraw = true;
			enemyMouth.isMegaDraw = false;
		}
		else
		{
			enemyMouth.isOnlyDraw = true;
			enemyMouth.isMegaDraw = true;
		}
			
		wallMouth = true;
		enemyMouth.diffYFar = -10;
			
		if instance_exists(enemyMouth)
		{
			if instance_exists(anchor)
			{
				enemyMouth.anchor = anchor;
				anchor.enemyBelong = enemyMouth;
				wallMouth = true;
			}
		}
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