// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function StatusEnemyBurned()
{
	if (burnFlash >0)
	{
		burnFlash-=0.1
	}

	if (burned = true)
	{
		contBurnPart--;
	
		if (contBurnPart <= 0)
		{
			contBurnPart = random_range(contBurnPartMax-1,contBurnPartMax+2) ;
			part_particles_create(global.partSmoke_sys, x+random_range(10,-10), y+random_range(10,-10), global.partSmoke , 1);
		}
		contBurnedTotal --;
	
		if (contBurnedTotal <= 0)
		{
			contBurnedTotal = contBurnedTotalMax;
			burned = false;
		}
		contBurned --;
	
		if (contBurned <= 0)
		{
			contBurned = contBurnedMax;
			burnFlash = 1;
			_hp-=1;
		}
	}
}