// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForUpgradeEnchufe(argument0, argument1)
{
	_spriteBattery =-1;
	
	if (haveBatteryUpgrade)
	{
		instance_create_layer(o_playerShip.x, o_playerShip.y -30, "Player", o_bannerBullet)
	}
	
	for (var i=0; i< 1; i++)
	{
		mods = ds_map_find_value(argument0, i)
	
		if (mods.bouncingBullets == false) && (global.havePickedBouncingBullets)
		{		
			enchufe.upgradesBattery+=1;
			mods.bouncingBullets = true;
			global.havePickedBouncingBullets = false;
			_spriteBattery = s_bouncingBulletsEnchufe;
		}
		if (mods.smartBullets == false) && (global.havePickedSmartBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.smartBullets = true;
			global.havePickedSmartBullets = false;
			_spriteBattery = s_smartBulletsEnchufe;
		
		}
		if (mods.piercingBullets == false) && (global.havePickedPiercingBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.piercingBullets = true;
			global.havePickedPiercingBullets = false;
			_spriteBattery = s_piercingBulletsEnchufe;
			
		}
		if (mods.bombBullets == false) && (global.havePickedExploBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.bombBullets = true;
			global.havePickedExploBullets = false;
			_spriteBattery = s_exploBulletsEnchufe;
			
		}
		if (mods.bifurcateBullets == false) && (global.havePickedSplitBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.bifurcateBullets = true;
			global.havePickedSplitBullets = false;
			_spriteBattery = s_splitBulletsEnchufe;
			
		}
		if (mods.pushingBullets == false) && (global.havePickedPushingBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.pushingBullets = true;
			global.havePickedPushingBullets = false;
			_spriteBattery = s_pushBulletsEnchufe;
			
		}
		if (mods.burnBullets == false) && (global.havePickedBurningBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.burnBullets = true;
			global.havePickedBurningBullets = false;
			_spriteBattery = s_burningBulletsEnchufe;
			
		}
		
		if (mods.electroBullets == false) && (global.havePickedElectroBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.electroBullets = true;
			global.havePickedElectroBullets = false;
			_spriteBattery = s_electroBulletsEnchufe;
			
		}
		
		if (mods.ghostBullets == false) && (global.havePickedGhostBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.ghostBullets = true;
			global.havePickedGhostBullets = false;
			_spriteBattery = s_ghostBulletsEnchufe;
			
		}
		
		if (mods.iceBullets == false) && (global.havePickedIceBullets)
		{
			enchufe.upgradesBattery+=1;
			mods.iceBullets = true;
			global.havePickedIceBullets = false;
			_spriteBattery = s_iceBulletsEnchufe;
			
		}
	}
	
	if (_spriteBattery != -1)
	{
	
		haveBatteryUpgrade = false;
		
		if (enchufe.hp)
		{
			AddBattery(global.batteryEnchufeListHP, global.batteryEnchufeListHPnum,_spriteBattery);
			global.batteryEnchufeListHPnum+=1;
		
		}
		if (enchufe.ammo)
		{
			AddBattery(global.batteryEnchufeListAmmo, global.batteryEnchufeListAmmonum,_spriteBattery);
			global.batteryEnchufeListAmmonum+=1;
		}
		if (enchufe.laser)
		{
			AddBattery(global.batteryEnchufeListLaser, global.batteryEnchufeListLasernum,_spriteBattery);
			global.batteryEnchufeListLasernum+=1;

		}
		if (enchufe.energy)
		{
			AddBattery(global.batteryEnchufeListEnergy, global.batteryEnchufeListEnergynum,_spriteBattery)
			global.batteryEnchufeListEnergynum+=1;;
		}
	
		CreateEnchufeBattery();
	
	}
	
}