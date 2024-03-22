// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawEnemy(_sprite, _image, _xoff, _yoff, _rot, _color, _alpha, _drawparts) //sprite, image, xoff, yoff,rot,color,alpha)
{
	
	draw_sprite_ext(_sprite, _image, __view_get( e__VW.XView, 0 )+initialX+(_xoff*xScale),__view_get( e__VW.YView, 0 )+initialY+_yoff, xScale,1,_rot,_color, _alpha)
	
	if (_drawparts)
	{
		contParts --;
		if (contParts <=0)
		{
			part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX - 4*xScale +(_xoff*xScale), __view_get( e__VW.YView, 0 )+initialY+_yoff, global.EnemyKilledBy_part , 1)
			contParts = contPartsInitial;
		}
	}
	
	//if (_drawWall)
	//{
	//	if (wallBest = false)
	//	{
	//		wall = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+242,"PauseHUE_Sub",o_wallBestiary);
	//		wallBest = true;
	//	}
	
	//	if instance_exists(wall)
	//	{
	//		wall.image_alpha = alphaInfo;
	//		wall.x = __view_get( e__VW.XView, 0 )+initialX;
	//	}	
		
	//}
				
	//for (var i=0; i<2; i++)
	//{
	//	draw_set_font(global.customFont16);
	//	draw_set_color(global.brightRed);
	//	draw_text(__view_get( e__VW.XView, 0 )-1+initialXText,__view_get( e__VW.YView, 0 )+151 + (i*110),string(enemy.alias));
	//	draw_set_color(c_white)
	//	draw_text(__view_get( e__VW.XView, 0 )+initialXText,__view_get( e__VW.YView, 0 )+150+ (i*110),string(enemy.alias));
	//}
}