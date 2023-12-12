// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LaserLogicPlayer()
{
	
	if (global.laser <=0)
	{
		cooldownLaser = 20;
	}

	if (global.laser > 0)
	{
		if (global.laser >0)
		{
			cooldownLaser--;
		}
	
		if (key_laser) && (cooldownLaser <=0)
		{
			if (soundLaser = false)
			{
				soundLaser = true;
				audio_sound_gain(snd_laserPlayer, 1,0)
				audio_play_sound_on(global.audioEmitter, snd_laserPlayer, false, 50)
			}
			laserAborted = false;
			gamepad_set_vibration(0,0.05*laserCont,0.05*laserCont)
			laserCont+=1.5;
			
			if (laserCont >= 60) && (laserActive = false) 
			{
				impulse = false;
				if (cooldownLaser<=0)
				{
					screenShake(15,20)
				}
				
				laserCont = 60;
				laserActive = true;
				drawflash=true;
				drawflashCont = 5;
			}
		}
		else
		{
			if (laserAborted = false)
			{
				soundLaser = false;
				audio_sound_gain(snd_laserPlayer, 0,600)
				laserAborted = true;
				alarm[4] = 10;
			}
			else
			{
				soundLaser = false;
				audio_sound_gain(snd_laserPlayer, 0,600)
			}
			
			contExploTile = 0;
			laserCont = 0;
			laserActive = false;
			flashLaser = false;
			blueWidht = 20;
			whiteWidht = 30;
			whiteW = 10;
			blueW = 30;
			impulse = false;
		}

		if (laserActive) && (key_laser) && (global.laser>0)
		{
			if (impulse = false)
			{
				_hpush += -lengthdir_x(10, _angle);
				_vpush += -lengthdir_y(10, _angle);
				impulse = true;
			}
			
			gamepad_set_vibration(0,2,2)
			PlayerShipLaser(_angle);
		}
	}
	else
	{
		if (laserActive)
		{
			soundLaser = false;
			audio_sound_gain(snd_laserPlayer, 0,600)
			laserActive = false
			alarm[4] = 10
		}
	}
	
	if (audio_sound_get_gain(snd_laserPlayer) <= 0)
	{
		audio_stop_sound(snd_laserPlayer)
	}
	
}