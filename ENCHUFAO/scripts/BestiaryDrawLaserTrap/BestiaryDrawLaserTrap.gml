// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawLaserTrap(_color)
{
	if (wallMouth = false)
	{
		SetHUE();
		wallMouth = true;
		laserGameOver = instance_create_layer(__view_get( e__VW.XView, 0 )+385,__view_get( e__VW.YView, 0 )+initialY,"PauseHUE_Sub",o_laserBesatiary);
		wall = instance_create_layer(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+initialY,"PauseHUE_Sub",o_wallGameOver);
		wall.image_index = 2;
		wall.image_angle = 270;
		wall2 = instance_create_layer(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+initialY,"PauseHUE_Sub",o_wallGameOver);
		wall2.image_index = 2;
		wall2.image_angle = 90;
	}
			
	laserGameOver.image_alpha = alphaInfo;
	laserGameOver.image_blend=_color;
	laserGameOver.x = __view_get( e__VW.XView, 0 )+initialX+65;
			
	wall.image_alpha = alphaInfo;
	wall.image_blend=_color;
	wall.x = __view_get( e__VW.XView, 0 )+initialX-80;
			
	wall2.image_alpha = alphaInfo;
	wall2.image_blend=_color;
	wall2.x = __view_get( e__VW.XView, 0 )+initialX+80;
}