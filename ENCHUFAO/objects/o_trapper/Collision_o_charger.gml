/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (playerTrapped = false)
{
	other.plugged = true;
	playerTrapped = true;
	
	with (o_playerShip)
	{
		inEnchufe = instance_nearest(o_charger.x, o_charger.y, o_trapper)
		Plug();
	}
}

