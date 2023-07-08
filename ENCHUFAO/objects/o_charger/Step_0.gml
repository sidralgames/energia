/// @description Insert description here
// You can write your code in this editor
if (overcharged)
{
	//rateAnterior = o_playerShip.fireRate;
	//o_playerShip.fireRate = 30;
	part_particles_create(global.overCharged_sys, o_playerShip.x+random_range(-18,18), o_playerShip.y+random_range(-18,18), global.overChargedPart , 1)	
	part_particles_create(global.overCharged_sys, x+random_range(-18,18), y+random_range(-18,18), global.overChargedPart , 1)	
}




