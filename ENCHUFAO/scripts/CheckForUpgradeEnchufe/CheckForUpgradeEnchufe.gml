// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForUpgradeEnchufe(argument0, argument1)
{
	_spriteBattery =-1;
	
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
		}
	
	
		if (enchufe.upgradesBattery = 1)
		{
			xoffset = 0;
			yoffset = 20;
			var _c = dcos(inEnchufe._angle);
			var _s = dsin(inEnchufe._angle);
			var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
			var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = _spriteBattery;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
		
		}
	
		if (enchufe.upgradesBattery = 2)
		{
			xoffset = 11;
			yoffset = -16;
			var _c = dcos(inEnchufe._angle);
			var _s = dsin(inEnchufe._angle);
			var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
			var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = _spriteBattery;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
			battery.off_angle = -45;
		}
	
		if (enchufe.upgradesBattery = 3)
		{
			xoffset = -11;
			yoffset = -16;
			var _c = dcos(inEnchufe._angle);
			var _s = dsin(inEnchufe._angle);
			var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
			var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = _spriteBattery;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
			battery.off_angle = 45;
		
		}
	
	}
	
}