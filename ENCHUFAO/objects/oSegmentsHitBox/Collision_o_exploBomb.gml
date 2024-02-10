/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(worm)
{
	if (global.bombIsHomingBomb)
	{
		worm._hp -= 1*global.damageDealt;
	}
	else
	{
		worm._hp -= 5*global.damageDealt;
	}
	
}


