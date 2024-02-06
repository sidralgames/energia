/// @description Inserte aquí la descripción
// Puede escribir su código en este editor









if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged) && (!o_playerShip.enchufe.isPETA_F)
	{
		if (charging == false)
		{
			instance_destroy()	
		}
	}
}

