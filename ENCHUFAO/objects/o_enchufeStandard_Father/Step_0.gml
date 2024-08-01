/// @description Inserte aquí la descripción
// Puede escribir su código en este editor







// Inherit the parent event
event_inherited();

if (charge >= 200) && (soundActive == false)
{
	soundActive = true;
	audio_play_sound_on(global.audioEmitter, snd_EnchufeActive, false, 50)
}

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