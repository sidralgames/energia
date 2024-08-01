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
	if (inEnchufe.deleteData = true)
	{
		global.deletingData = true;	
	}
			
	//-----------SALA STANDARD-----------//
	if (inEnchufe.hp = true)
	{
		global.chargingHp = true;	
	}
	if (inEnchufe.laser = true)
	{
		global.chargingLaser= true;	
	}
	if (inEnchufe.ammo = true)
	{
		global.chargingAmmo = true;	
	}
	if (inEnchufe.energy = true)
	{
		global.chargingEnergy = true;
	}
	
	if (inEnchufe.enchufeBomb = true)
	{
		global.chargingBombs = true;	
	}
	
	if (inEnchufe.isPETA_F)
	{
		inEnchufe.petaActive = true;
		
		if (inEnchufe.isPETA = true)
		{
			global.chargingEnergy = true;
		}
		if (inEnchufe.isPETAAmmo = true)
		{
			//global.chargingEnergy = true;
			global.chargingAmmo = true;	
		}
		if (inEnchufe.isPETAHP = true)
		{
			//global.chargingEnergy = true;
			global.chargingHp = true;	
		}
		if (inEnchufe.isPETALaser = true)
		{
			global.chargingEnergy = true;
			global.chargingLaser = true;	
		}
		if (inEnchufe.isPETAAll= true)
		{
			global.chargingEnergy = true;
			global.chargingLaser = true;	
			global.chargingHp = true;	
			global.chargingAmmo = true;	
		}
	}
	
	
	inEnchufe.charging = true;
	
	if (inEnchufe.final = true)
	{
		pluggedFinal = true;
	}
	
	if (inEnchufe.secret = true)
	{
		pluggedSecret= true;
	}
}