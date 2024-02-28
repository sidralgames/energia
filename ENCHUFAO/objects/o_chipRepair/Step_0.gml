/// @description Inserte aquí la descripción
// Puede escribir su código en este editoh

event_inherited();
if instance_exists(o_playerShip)
{
	if (global.hp <= global.hpMax)
	{
		global.hp += 0.0015;
	
		if (alarm[1] <=0)
		{
			part_particles_create(global.repairingPart_sys, o_playerShip.x+random_range(-18,18), o_playerShip.y+random_range(-18,18), global.repairingPart , 1)	
			alarm[1] = max(3, 6 - instance_number(o_chipRepair));
		}
	}
}






