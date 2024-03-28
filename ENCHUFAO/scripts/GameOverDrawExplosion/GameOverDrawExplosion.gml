// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawExplosion()
{
	for (var i=0; i<global.totalNumberOfExplosions; i++)
	{
		explosion = ds_map_find_value(global.explosionList, i);
		if (explosion.number = enemyBestiaryNumber)
		{
			switch(explosion.sprite)
			{
	
				case (s_exploGreen):
				{
					BombKilledBy();
				}
				break;
		
				case (s_exploPurple):
				{
					BombKilledBy();
				}
				break;
		
				case (s_exploOrange):
				{
					BombKilledBy();
				}
				break;
		
				case (s_exploBlue):
				{
					BombKilledBy();
				}
				break;
			}
		}
	}
}