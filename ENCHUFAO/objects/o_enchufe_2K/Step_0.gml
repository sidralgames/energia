/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();



if (isMainEnchufe) && (enchufeActive) && (global.chargerShoots)
{
	if instance_exists(o_playerShip)
	{
		Controls_Input();
		
		if (key_shoot)
		{
			if (o_playerShip.alarm[0] <= 0) && (global.ammo >1 )
			{
				if (o_playerShip.plugged) 
				{
					SocketShoot();
				}
			}
		}
	}
}