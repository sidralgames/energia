// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function StatusConditionEnemy()
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

	if (burnFlash >0)
	{
		burnFlash-=0.1
	}
	if (electroFlash >0)
	{
		electroFlash-=0.1
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

	if (electrocutated = true)
	{
		contElectroPart--;
	
		if (contElectroPart <= 0)
		{
			contElectroPart = random_range(1,3) ;
			part_particles_create(global.overCharged_sys, x+random_range(15,-15), y+random_range(15,-15), global.overChargedPart , 2);
		}
		contElectroTotal --;
		if (contElectroTotal <= 0)
		{
			contElectroTotal = contBurnedTotalMax;
			electrocutated = false;
		}
		contElectro --;
		if (contElectro <= 0)
		{
			contElectro = contBurnedMax;
			electroFlash = 1;
			_hp-=1;
		}
	}

	checkHPEnemies();
}