// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function StatusEnemyElectrocutated()
{
	if (electroFlash >0)
	{
		electroFlash-=0.1
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
}