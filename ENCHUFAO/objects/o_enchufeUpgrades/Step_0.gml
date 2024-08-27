/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


//if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
//{
//    _hpush = -_hpush*bnc;

//}
//if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
//{
//    _vpush = -_vpush*bnc;
	
//}

//Move();


//_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);



if (room != Sala_Tutorial)
{
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
}
else
{
	if instance_exists(o_playerShip)
	{
		if (o_playerShip.plugged) && (enchufeActive)
		{
			if (charge >= 200)
			{
				with(o_playerShip)
				{
					Unplug();
				}
				
				instance_destroy(o_enchufeUpgrades)	
			}
		}
	}
}

