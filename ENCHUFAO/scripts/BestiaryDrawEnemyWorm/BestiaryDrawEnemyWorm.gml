// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawEnemyWorm(_name, _xoff, _yoff,_color, _alpha)
{
	factorInitialX = 0.1;
	enemyMouth2 = noone;
	
	if (settedHue = false)
	{
		settedHue = true
		SetHUE();
	}
	
	switch(_name)
	{
		case "Gripper":
		{
			if (gripperCreated = false)
			{
				
				gripperCreated = true;
				gripper = instance_create_layer(__view_get( e__VW.XView, 0 )+initialX+(_xoff*xScale),
				__view_get( e__VW.YView, 0 )+initialY+_yoff,"PauseHUE",o_enemySegmentsGameOver);
			
				if (xScale = 1)
				{
					gripper.cableForce = 180
				}
				else
				{
					gripper.cableForce = 0
				}
			
				gripper.image_blend = _color;
				gripper._colorBody = _color;
			}
			
			with(gripper) 
			{
				image_alpha = _alpha
				image_xscale = other.xScale;
				if (other.xScale = 1)
				{
					cableForce = 180
				}
				else
				{
					cableForce = 0
				}
				x = __view_get( e__VW.XView, 0 )+ other.initialX +(_xoff*other.xScale);
			}
		
		}break;
	
		case "Freeworm":
		{
			if (freewormCreated = false)
			{
				freewormCreated = true;
			
				freeworm = instance_create_layer(__view_get( e__VW.XView, 0 )+initialX+(_xoff*xScale),
				__view_get( e__VW.YView, 0 )+initialY+_yoff,"PauseHUE",o_enemyMouth_FreeGameOver)
			
				if (xScale = 1)
				{
					freeworm.cableForce = 180
				}
				else
				{
					freeworm.cableForce = 0
				}
		
				freeworm.image_blend = _color;
				freeworm._colorBody = _color;
			}
			
			with(freeworm) 
			{
				image_alpha = _alpha
				image_xscale = other.xScale;
				if (other.xScale = 1)
				{
					cableForce = 180
				}
				else
				{
					cableForce = 0
				}
				x = __view_get( e__VW.XView, 0 )+ other.initialX +(_xoff*other.xScale);
			}
	
		}break;
	
		case "Wormageddon":
		{
			if (wormageddonCreated = false)
			{
				//BestiaryDrawWallEnemy(0,0,c_white,1)
				wormageddonCreated = true;
				wormageddon = instance_create_layer(__view_get( e__VW.XView, 0 )+initialX+(_xoff*xScale),
				__view_get( e__VW.YView, 0 )+initialY+_yoff,"PauseHUE",o_BigWormGameOver)
			
				if (xScale = 1)
				{
					wormageddon.cableForce = 180
				}
				else
				{
					wormageddon.cableForce = 0
				}
		
				wormageddon.image_blend = _color;
				wormageddon._colorBody = _color;
			}
			
			with(wormageddon) 
			{
				image_alpha = _alpha
				image_xscale = other.xScale;
				if (other.xScale = 1)
				{
					cableForce = 180
				}
				else
				{
					cableForce = 0
				}
				x = __view_get( e__VW.XView, 0 )+ other.initialX +(_xoff*other.xScale);
			}
		}break; 
	}
}