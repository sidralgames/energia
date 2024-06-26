// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DeleteListsDataFromMemory()
{

	chips = ds_map_size(global.chipList);
	

	for (var i=0; i<chips; i++)
	{
		ds_map_delete(global.chipList, i)	
	}
	
	for (var i= 0; i<global.numberOfUpgradesPlayer; i++)
	{
		ds_map_delete(global.PlayerUpgradesList, i)	
	}
	
	for (var i= 0; i<global.numberOfUpgrades; i++)
	{
		ds_map_delete(global.upgradesList, i)	
	}
	
	for (var i= 0; i<global.numberOfMegaUpgrades; i++)
	{
		ds_map_delete(global.megaUpgradesList, i)	
	}
	
	for (var i= 0; i<global.enchufeHPUpgradesNum; i++)
	{
		ds_map_delete(global.enchufeHPUpgradesList, i)	
	}
	
	for (var i= 0; i<global.enchufeAmmoUpgradesNum; i++)
	{
		ds_map_delete(global.enchufeAmmoUpgradesList, i)	
	}
	
	for (var i= 0; i<global.enchufeLaserUpgradesNum; i++)
	{
		ds_map_delete(global.enchufeLaserUpgradesList, i)	
	}
	
	for (var i= 0; i<global.enchufeEnergyUpgradesNum; i++)
	{
		ds_map_delete(global.enchufeEnergyUpgradesList, i)	
	}
	
	for (var i= 0; i<global.batteryEnchufeListHPnum; i++)
	{
		ds_map_delete(global.batteryEnchufeListHP, i)	
	}
	
	for (var i= 0; i<global.batteryEnchufeListAmmonum; i++)
	{
		ds_map_delete(global.batteryEnchufeListAmmo, i)	
	}
	
	for (var i= 0; i<global.batteryEnchufeListLasernum; i++)
	{
		ds_map_delete(global.batteryEnchufeListLaser, i)	
	}
	
	for (var i= 0; i<global.batteryEnchufeListEnergynum; i++)
	{
		ds_map_delete(global.batteryEnchufeListEnergy, i)	
	}
	
	for (var i= 0; i<global.numberOfShips; i++)
	{
		ds_map_delete(global.shipList, i)	
	}
	
	for (var i= 0; i<global.numberOfAch; i++)
	{
		ds_map_delete(global.achievementList, i)	
	}
	
	for (var i= 0; i<global.totalNumberOfEnemiesBestiary; i++)
	{
		ds_map_delete(global.bestiaryList, i)	
	}
	
	for (var i= 0; i<global.totalNumberOfExplosions; i++)
	{
		ds_map_delete(global.explosionList, i)	
	}
	
	ds_map_clear(global.chipList);
	ds_map_clear(global.PlayerUpgradesList);
	ds_map_clear(global.upgradesList);
	ds_map_clear(global.megaUpgradesList);

	ds_map_clear(global.enchufeHPUpgradesList);
	ds_map_clear(global.enchufeAmmoUpgradesList);
	ds_map_clear(global.enchufeLaserUpgradesList);
	ds_map_clear(global.enchufeEnergyUpgradesList);

	ds_map_clear(global.batteryEnchufeListHP);
	ds_map_clear(global.batteryEnchufeListAmmo);
	ds_map_clear(global.batteryEnchufeListLaser);
	ds_map_clear(global.batteryEnchufeListEnergy);

	ds_map_clear(global.shipList);

	ds_map_clear(global.achievementList);
	ds_map_clear(global.statsList);
	ds_map_clear(global.bestiaryList)
	ds_map_clear(global.explosionList)

	ds_map_destroy(global.chipList)
	ds_map_destroy(global.PlayerUpgradesList);
	ds_map_destroy(global.upgradesList);
	ds_map_destroy(global.megaUpgradesList);
	ds_map_destroy(global.enchufeHPUpgradesList);
	ds_map_destroy(global.enchufeAmmoUpgradesList);
	ds_map_destroy(global.enchufeLaserUpgradesList);
	ds_map_destroy(global.enchufeEnergyUpgradesList);

	ds_map_destroy(global.batteryEnchufeListHP);
	ds_map_destroy(global.batteryEnchufeListAmmo);
	ds_map_destroy(global.batteryEnchufeListLaser);
	ds_map_destroy(global.batteryEnchufeListEnergy);

	ds_map_destroy(global.shipList);

	ds_map_destroy(global.achievementList);
	ds_map_destroy(global.statsList);
	ds_map_destroy(global.bestiaryList);
	ds_map_destroy(global.explosionList);
}