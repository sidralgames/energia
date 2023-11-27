// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerPluggedMainEnchufes()
{
	if (instance_exists(o_playerShip))
	{
		with(o_playerShip)
		{
			if (inEnchufe)
			{
				canModify = (inEnchufe.enchufeActive) && (inEnchufe.isPETA_F == false)
				&& (inEnchufe.enchufeBomb == false) && (inEnchufe.dying == false);
				
				enchufeMimic = (inEnchufe.isMimic);
				
			}
		}
		
		//-----------ALL ENERGY---------//
		if (o_playerShip.enchufeMimic == false)
		{
			if (global.energy <= global.energyMax)
			{
				if (alarm[4] <=0)
				{
						part_particles_create(global.energyPart_sys, o_playerShip.x+random_range(-15,15), o_playerShip.y+random_range(-15,15), global.energyPart , 1)	
						alarm[4] = 3;
				}
				global.energy+=0.75*global.chargeTime;
			}
		
			
			
			//------------ENERGY----------//
			if (global.chargingEnergy = true)
			{
				if (checkUpgradesOfEnchufe = false) && (o_playerShip.canModify)
				{
					CheckUpgradesOfEnchufe(global.enchufeEnergyUpgradesList, global.enchufeEnergyUpgradesNum);
					checkUpgradesOfEnchufe = true;
				}
			}
	
			//------------HP-----------//
			if (global.chargingHp = true)
			{
				if (checkUpgradesOfEnchufe = false) && (o_playerShip.canModify)
				{
					CheckUpgradesOfEnchufe(global.enchufeHPUpgradesList, global.enchufeHPUpgradesNum);
					checkUpgradesOfEnchufe = true;
				}
		
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
	
			//------------LASER-----------//
			if (global.chargingLaser = true)
			{
				if (checkUpgradesOfEnchufe = false) && (o_playerShip.canModify)
				{
					CheckUpgradesOfEnchufe(global.enchufeLaserUpgradesList, global.enchufeLaserUpgradesNum);
					checkUpgradesOfEnchufe = true;
				}
		
				if (global.laser <= global.laserMax)
				{
					global.laser +=0.005*global.chargeTime;
			
					if (alarm[3] <=0)
					{
						part_particles_create(global.laserPart_sys, o_playerShip.x+random_range(-15,15), o_playerShip.y+random_range(-15,15), global.laserPart , 1)	
						alarm[3] = 3;
					}
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
				if (checkUpgradesOfEnchufe = false) && (o_playerShip.canModify)
				{
					CheckUpgradesOfEnchufe(global.enchufeAmmoUpgradesList, global.enchufeAmmoUpgradesNum);
					checkUpgradesOfEnchufe = true;
				}
				if (global.ammo <= global.ammoMax)
				{
					global.ammo +=0.4*global.chargeTime;
			
					if (alarm[3] <=0)
					{
						part_particles_create(global.ammoPart_sys, o_playerShip.x+random_range(-15,15), o_playerShip.y+random_range(-15,15), global.ammoPart , 1)	
						alarm[3] = 3;
					}
				}
			}
			}
	}
	//------------BOMBS-----------//
	//if (global.chargingBombs = true)
	//{
	//	if (global.bombAmmo <= global.bombAmmoMax)
	//	{
	//		global.bombAmmo +=0.008*global.chargeTime;
	//	}
	//}
}