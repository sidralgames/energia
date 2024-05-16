// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerPetaAndPito()
{
	if (key_l3Down_p)
	{
		petaI = 10;
	}

	if (key_r3Down_p)
	{
		petaD = 10;
	}

	if (petaI >= 0)
	{
		petaI --;
	}

	if (petaD >= 0)
	{
		petaD --;
	}

	if (petaD <= 0)
	{
		petaD = 0;
	}

	if (petaI <= 0)
	{
		petaI = 0;
	}

	if (petaI > 0) && (petaD > 0)
	{
		if (global.PETAAmmo > 0)
		{
			if (alarm[11] <= 0) 
			{
				PlayerShipPETA();
			}
		}
	}

	if (key_l3Down) 
	{
		if (petaI <= 6) && (petaD <= 0)
		{
			if !audio_is_playing(pitoSound)
			{
				pitchPito = random_range(0.98,0.99)
				audio_play_sound_on(global.pito_emitter,pitoSound,false, 50, , , pitchPito)
			}
		}
	}
	else
	{
		audio_stop_sound(pitoSound);
	}

}