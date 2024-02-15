/// @description Inserte aquí la descripción
// Puede escribir su código en este editoh

event_inherited();
if (global.hp <= global.hpMax)
{
	global.hp += 0.002;
	
	if (alarm[1] <=0)
	{
		part_particles_create(global.repairingPart_sys, o_playerShip.x+random_range(-18,18), o_playerShip.y+random_range(-18,18), global.repairingPart , 1)	
		alarm[1] = max(4, 10 - instance_number(o_chipRepair));
	}
}







