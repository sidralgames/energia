// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawSockerSuckerAlone(_mega, _yoff, _color, _alpha)
{
	factorInitialX = 0.1;
	
	if (wallMouth = false)
	{
		sprite_index = s_enemyEnchufe;
		cable = instance_create_layer(x,y,"Cable", o_cableEnemy)

	
			wall = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+252+_yoff,"PauseHUE_Sub",o_wallGameOver);
			anchor = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+237+_yoff,"PauseHUE",o_mouthAnchor);
			enemyMouth = instance_create_layer(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+207+_yoff,"PauseHUE",o_enemy_Mouth);
			
			if (_mega = 1)
			{
				enemyMouth.isOnlyDraw = true;
				enemyMouth.isMegaDraw = true;
			}
			else
			{
				enemyMouth.isOnlyDraw = true;
				enemyMouth.isMegaDraw = false;
			}
			wallMouth = true;
		
			wall.image_blend = _color;
			
			anchor.image_blend = _color;
	
			enemyMouth.image_blend = _color;
			enemyMouth._colorBody = _color;
		
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
	
	enemyMouth.image_alpha = _alpha
	anchor.image_alpha = _alpha;
	wall.image_alpha = _alpha;
	wall.x = __view_get( e__VW.XView, 0 )+initialX;
	anchor.x = __view_get( e__VW.XView, 0 )+initialX;
	enemyMouth.x = __view_get( e__VW.XView, 0 )+initialX;
}