/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(worm)
{
	worm._hp -= 5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
}

instance_destroy(other);


