// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DeletePartSystemsFromMemory()
{
	part_particles_clear(global.ammoPart_sys);
	part_emitter_destroy_all(global.ammoPart_sys);
	part_system_destroy(global.ammoPart_sys);
	part_type_destroy(global.ammoPart);
	
	part_particles_clear(global.enchufe_sys);
	part_emitter_destroy_all(global.enchufe_sys);
	part_system_destroy(global.enchufe_sys);
	part_type_destroy(global.enchufePart);
	
	part_particles_clear(global.energyPart_sys);
	part_emitter_destroy_all(global.energyPart_sys);
	part_system_destroy(global.energyPart_sys);
	part_type_destroy(global.energyPart);
	
	part_particles_clear(global.balaGarbanzo_sys);
	part_emitter_destroy_all(global.balaGarbanzo_sys);
	part_system_destroy(global.balaGarbanzo_sys);
	part_type_destroy(global.balaGarbanzo);

	part_particles_clear(global.balaGreen_sys);
	part_emitter_destroy_all(global.balaGreen_sys);
	part_system_destroy(global.balaGreen_sys);
	part_type_destroy(global.balaGreen);
	
	part_particles_clear(global.balaP_sys);
	part_emitter_destroy_all(global.balaP_sys);
	part_system_destroy(global.balaP_sys);
	part_type_destroy(global.balaP);
	
	part_particles_clear(global.balaPTorreta_sys);
	part_emitter_destroy_all(global.balaPTorreta_sys);
	part_system_destroy(global.balaPTorreta_sys);
	part_type_destroy(global.balaPTorreta);
	
	part_particles_clear(global.balaPTorretaBig_sys);
	part_emitter_destroy_all(global.balaPTorretaBig_sys);
	part_system_destroy(global.balaPTorretaBig_sys);
	part_type_destroy(global.balaPTorretaBig);
	
	part_particles_clear(global.EnemyKilledBy_sys);
	part_emitter_destroy_all(global.EnemyKilledBy_sys);
	part_system_destroy(global.EnemyKilledBy_sys);
	part_type_destroy(global.EnemyKilledBy_part);
	
	part_particles_clear(global.laserPart_sys);
	part_emitter_destroy_all(global.laserPart_sys);
	part_system_destroy(global.laserPart_sys);
	part_type_destroy(global.laserPart);
	
	part_particles_clear(global.misil_sys);
	part_emitter_destroy_all(global.misil_sys);
	part_system_destroy(global.misil_sys);
	part_type_destroy(global.misil);
	
	part_particles_clear(global.naveEnemy_Mini_sys);
	part_emitter_destroy_all(global.naveEnemy_Mini_sys);
	part_system_destroy(global.naveEnemy_Mini_sys);
	part_type_destroy(global.naveEnemy_Mini);

	part_particles_clear(global.naveEnemy_Waiting_sys);
	part_emitter_destroy_all(global.naveEnemy_Waiting_sys);
	part_system_destroy(global.naveEnemy_Waiting_sys);
	part_type_destroy(global.naveEnemy_Waiting);
	
	part_particles_clear(global.naveEnemy1_sys);
	part_emitter_destroy_all(global.naveEnemy1_sys);
	part_system_destroy(global.naveEnemy1_sys);
	part_type_destroy(global.naveEnemy1);
	
	part_particles_clear(global.naveFriend_sys);
	part_emitter_destroy_all(global.naveFriend_sys);
	part_system_destroy(global.naveFriend_sys);
	part_type_destroy(global.naveFriend);
	
	part_particles_clear(global.naveP_cloak_sys);
	part_emitter_destroy_all(global.naveP_cloak_sys);
	part_system_destroy(global.naveP_cloak_sys);
	part_type_destroy(global.naveP_cloak);
	
	part_particles_clear(global.naveP_sys);
	part_emitter_destroy_all(global.naveP_sys);
	part_system_destroy(global.naveP_sys);
	part_type_destroy(global.naveP);
	
	part_particles_clear(global.overCharged_sys);
	part_emitter_destroy_all(global.overCharged_sys);
	part_system_destroy(global.overCharged_sys);
	part_type_destroy(global.overChargedPart);
	
	part_particles_clear(global.partSmoke_sys);
	part_emitter_destroy_all(global.partSmoke_sys);
	part_system_destroy(global.partSmoke_sys);
	part_type_destroy(global.partSmoke);
	
	part_particles_clear(global.partSmokeBomb_Back_sys);
	part_emitter_destroy_all(global.partSmokeBomb_Back_sys);
	part_system_destroy(global.partSmokeBomb_Back_sys);
	part_type_destroy(global.partSmokeBomb_Back);
	
	part_particles_clear(global.partSmokeBomb_sys);
	part_emitter_destroy_all(global.partSmokeBomb_sys);
	part_system_destroy(global.partSmokeBomb_sys);
	part_type_destroy(global.partSmokeBomb);
	
	part_particles_clear(global.repairingPart_sys);
	part_emitter_destroy_all(global.repairingPart_sys);
	part_system_destroy(global.repairingPart_sys);
	part_type_destroy(global.repairingPart);
	
	part_particles_clear(global.blinded_sys);
	part_emitter_destroy_all(global.blinded_sys);
	part_system_destroy(global.blinded_sys);
	part_type_destroy(global.blindedPart);
	
}