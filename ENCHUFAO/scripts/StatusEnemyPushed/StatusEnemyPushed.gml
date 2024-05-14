// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function StatusEnemyPushed()
{
	if (repelled = true)
	{
		_angle = -_angle;
		repelledTime--;
	
		if (repelledTime <= 0)
		{
			repelled = false;
			repelledTime = repelledTimeMax;
		}
	}
}