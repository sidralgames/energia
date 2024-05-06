// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DeleteAndClearLists()
{
	font_delete(global.customFont20);
	font_delete(global.customFont16);
	font_delete(global.customFont14);
	font_delete(global.customFont13);
	font_delete(global.customFont12);
	font_delete(global.customFont11);
	
	
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
	
	
	audio_bus_clear_emitters(delay_bus)
	audio_emitter_free(global.audioEmitter);
	
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

	part_emitter_destroy_all(global.ammoPart_sys);
	part_system_destroy(global.ammoPart_sys);
	
	part_emitter_destroy_all(global.enchufe_sys);
	part_system_destroy(global.enchufe_sys);
	
	part_emitter_destroy_all(global.energyPart_sys);
	part_system_destroy(global.energyPart_sys);
	
	part_emitter_destroy_all(global.balaGarbanzo_sys);
	part_system_destroy(global.balaGarbanzo_sys);
	
	part_emitter_destroy_all(global.balaGreen_sys);
	part_system_destroy(global.balaGreen_sys);
	
	part_emitter_destroy_all(global.balaP_sys);
	part_system_destroy(global.balaP_sys);
	
	part_emitter_destroy_all(global.balaPTorreta_sys);
	part_system_destroy(global.balaPTorreta_sys);
	
	part_emitter_destroy_all(global.balaPTorretaBig_sys);
	part_system_destroy(global.balaPTorretaBig_sys);
	
	part_emitter_destroy_all(global.EnemyKilledBy_sys);
	part_system_destroy(global.EnemyKilledBy_sys);
	
	part_emitter_destroy_all(global.laserPart_sys);
	part_system_destroy(global.laserPart_sys);
	
	part_emitter_destroy_all(global.misil_sys);
	part_system_destroy(global.misil_sys);
	
	part_emitter_destroy_all(global.naveEnemy_Mini_sys);
	part_system_destroy(global.naveEnemy_Mini_sys);
	
	part_emitter_destroy_all(global.naveEnemy_Waiting_sys);
	part_system_destroy(global.naveEnemy_Waiting_sys);
	
	part_emitter_destroy_all(global.naveEnemy1_sys);
	part_system_destroy(global.naveEnemy1_sys);
	
	part_emitter_destroy_all(global.naveFriend_sys);
	part_system_destroy(global.naveFriend_sys);
	
	part_emitter_destroy_all(global.naveP_cloak_sys);
	part_system_destroy(global.naveP_cloak_sys);
	
	part_emitter_destroy_all(global.naveP_sys);
	part_system_destroy(global.naveP_sys);
	
	part_emitter_destroy_all(global.overCharged_sys);
	part_system_destroy(global.overCharged_sys);
	
	part_emitter_destroy_all(global.partSmoke_sys);
	part_system_destroy(global.partSmoke_sys);
	
	part_emitter_destroy_all(global.partSmokeBomb_Back_sys);
	part_system_destroy(global.partSmokeBomb_Back_sys);
	
	part_emitter_destroy_all(global.partSmokeBomb_sys);
	part_system_destroy(global.partSmokeBomb_sys);
	
	part_emitter_destroy_all(global.repairingPart_sys);
	part_system_destroy(global.repairingPart_sys);
	
	
}