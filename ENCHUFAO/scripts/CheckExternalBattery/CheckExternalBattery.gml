// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckExternalBattery()
{
	if (global.haveExternalBattery)
	{
		if (key_buttonR) && (haveUsedBattery = false)
		{
			haveUsedBattery = true;
			global.externalBatteryOn = true;
			global.ammo = global.ammoMax;
			global.laser = global.laserMax;
			global.energy = global.energyMax;
		}
	
		if (global.externalBatteryOn)
		{
			if (global.godModeIsOn = false)
			{
				global.infiniteAmmoIsOn = true;
				global.infiniteLaserIsOn = true;
				global.infiniteEnergyIsOn = true;
			}
			//part_particles_create(global.energyPart_sys, x+random_range(-20,20), y+random_range(-20,20), global.energyPart , 1)	
			part_particles_create(global.laserPart_sys, x+random_range(-15,15), y+random_range(-15,15), global.laserPart , 1)	
			contExternalBattery -=1;
			if (contExternalBattery <= 0)
			{
				global.externalBatteryOn = false;
			
				if (global.godModeIsOn = false)
				{
					global.infiniteAmmoIsOn = false;
					global.infiniteLaserIsOn = false;
					global.infiniteEnergyIsOn = false;
				}
			
			}
		}
	}
}