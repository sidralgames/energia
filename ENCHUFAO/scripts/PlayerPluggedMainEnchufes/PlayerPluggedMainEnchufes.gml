// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerPluggedMainEnchufes()
{
	//-----------ALL ENERGY---------//
	if (global.energy <= global.energyTotal)
	{
		global.energy+=0.75*global.chargeTime;
	}
	
	//------------HP-----------//
	if (global.chargingHp = true)
	{
		if (global.hp < global.hpMax)
		{
			global.hp +=0.007*global.chargeTime;
			if (alarm[3] <=0)
			{
				part_particles_create(global.repairingPart_sys, o_playerShip.x+random_range(-15,15), o_playerShip.y+random_range(-15,15), global.repairingPart , 1)	
				alarm[3] = 3;
			}
		}
	}
	
	//------------SHIELD-----------//
	if (global.chargingLaser = true)
	{
		if (global.laser <= global.laserMax)
		{
			global.laser +=0.005*global.chargeTime;
		}
		
		global.laserDrain = 0.015;
	}
	else
	{
		global.laserDrain = 0.005;
	}
	
	//------------AMMO-----------//
	if (global.chargingAmmo = true)
	{
		if (global.ammo <= global.ammoMax)
		{
			global.ammo +=0.4*global.chargeTime;
		}
	}
	
	
	//------------BOMBS-----------//
	if (global.chargingBombs = true)
	{
		if (global.bombAmmo <= global.bombAmmoMax)
		{
			global.bombAmmo +=0.008*global.chargeTime;
		}
	}
}