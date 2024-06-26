// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetEnchufesUpgrades()
{
	ds_map_clear(global.enchufeHPUpgradesList);
	ds_map_clear(global.enchufeAmmoUpgradesList);
	ds_map_clear(global.enchufeLaserUpgradesList);
	ds_map_clear(global.enchufeEnergyUpgradesList);
	
	global.batteryEnchufeListLasernum = 0;
	global.batteryEnchufeListAmmonum = 0;
	global.batteryEnchufeListHPnum = 0;
	global.batteryEnchufeListEnergynum = 0;
	
	AddUpgradeEnchufeHP();
	AddUpgradeEnchufeAmmo();
	AddUpgradeEnchufeEnergy();
	AddUpgradeEnchufeLaser();
}