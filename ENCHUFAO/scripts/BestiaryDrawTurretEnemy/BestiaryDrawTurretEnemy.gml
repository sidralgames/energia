// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawTurretEnemy() //sprite, image, xoff, yoff,rot,color,alpha)
{
	current = dsin(timer * frequency) * amplitude + midpoint;
	timer++;
	rot=current;
			
	if (wallMouth = false)
	{
		SetHUE();
		wallMouth = true;
		wall = instance_create_layer(__view_get( e__VW.XView, 0 )+317,__view_get( e__VW.YView, 0 )+initialY,"PauseHUE_Sub",o_wallGameOver);
		wall.image_index = 1;
	}
			
	if instance_exists(wall)
	{
		wall.image_alpha = alphaInfo;
		wall.x = __view_get( e__VW.XView, 0 )+initialX;
	}
			
	BestiaryDrawEnemy(enemy.sprite, 0, 0, 0, rot, c_white, alphaInfo, false);
}