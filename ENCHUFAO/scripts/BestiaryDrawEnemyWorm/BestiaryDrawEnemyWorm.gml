// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawEnemyWorm(_name, _xoff)
{
	factorInitialX = 0.1;
	
	if (wallMouth = false)
	{
		SetHUE();
		if (_name = "Gripper")
		{
			wallMouth = true;
			enemyMouth = instance_create_layer(__view_get( e__VW.XView, 0 )+initialX+(_xoff*xScale),__view_get( e__VW.YView, 0 )+225,"PauseHUE",o_enemySegmentsGameOver);
			if (xScale = 1)
			{
				enemyMouth.cableForce = 180
			}
			else
			{
				enemyMouth.cableForce = 0
			}
		}
		else if (_name = "Freeworm")
		{
			wallMouth = true;
			enemyMouth = instance_create_layer(__view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+225,"PauseHUE",o_enemyMouth_FreeGameOver);
		}
		else if (_name = "Wormageddon")
		{
			wallMouth = true;
			enemyMouth = instance_create_layer(__view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+225,"PauseHUE",o_BigWormGameOver);
		} 
	}
	
	with(enemyMouth)
	{
		image_xscale = other.xScale;
		if (other.xScale = 1)
		{
			cableForce = 180
		}
		else
		{
			cableForce = 0
		}
		x = other.initialX +(_xoff*other.xScale);
		cable.x = x;
	}
	
}