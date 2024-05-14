// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function StatusEnemyFreezing()
{
	if (freeze = true)
	{
		if (freezing >= 0.8)
		{
			freezing = 0.8;
		}

		if (freezing >= 0)
		{
			freezing-=0.005;	
		}

		if (freezing<= 0)
		{
			slowedCont = 0;
			freeze = false;
		}
	}
}