// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckEnchufe()
{
	//-----------INICIO-----------//
	if (inEnchufe.reset = true)
	{
		global.resetingShip = true;	
	}
	if (inEnchufe.go = true)
	{
		global.Go = true;	
	}
			
	//-----------SALA STANDARD-----------//
	if (inEnchufe.hp = true)
	{
		global.chargingHp = true;	
	}
	else if (inEnchufe.shield = true)
	{
		global.chargingShield= true;	
	}
	else if (inEnchufe.ammo = true)
	{
		global.chargingAmmo = true;	
	}
	else if (inEnchufe.energy = true)
	{
		global.chargingEnergy = true;
	}
	else if (inEnchufe.final = true)
	{
		pluggedFinal = true;
	}
}