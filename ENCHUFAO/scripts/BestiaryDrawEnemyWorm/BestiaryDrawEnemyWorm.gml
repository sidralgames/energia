// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawEnemyWorm(_name)
{
	if (wallMouth = false)
	{
		if (_name = "Gripper")
		{
			wallMouth = true;
			enemyMouth = instance_create_layer(__view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+225,"PauseHUE",o_enemySegmentsGameOver);
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
		x = other.initialX;
		cable.x = x;
	}
	
}