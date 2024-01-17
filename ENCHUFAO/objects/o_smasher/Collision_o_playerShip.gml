/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (image_index > 2) && (image_index < 8)
{
	if collision_rectangle(x-12, y+2, x+12, y+32, o_playerShip, false, true)
	{
		if (playerRepelled = false)
		{
			playerRepelled = true;
		
			alarm[3] = repelledTime;
		
			if (x > other.x)
			{
				other.alarm[3] = 20;
				other._hpush = -3;
			}
			else
			{
				other.alarm[3] = 20;
				other._hpush = 3;
			}
		
			with (o_playerShip)
			{
				if (global.shields<1) //&& (other.isImmortal = false)
				{
					if (tocado = false)
					{
						gamepad_set_vibration(0,0.5,0.5);
						alarm[4] = 10;
						flashAlpha = 1;
						audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
						alarm[1] = 30
						tocado = true;
						global.hp -= 1 * global.damageReceived;
						if (global.hp <= 0)
						{

						}
						screenShake(4,30)
						global.hitsTaken+=1;
					}
				}
			}
		
		}
	}
	else
	{
		if (playerRepelled = false)
		{
			playerRepelled = true;
		
			alarm[3] = repelledTime;
			gamepad_set_vibration(0,0.3,0.3);
			other.alarm[4] = 4;
		
			other._hpush = -other._hpush*other.bnc;
			other._vpush = -other._vpush*other.bnc;
			other.alarm[3] = 10;
	
			global.playerBumps+=1;
			global.totalBumps+=1;
			other.bumpsAchievement = false;	
		}
		
	}
}
else
{
	if (playerRepelled = false)
	{
		playerRepelled = true;
	
		alarm[3] = repelledTime;
		gamepad_set_vibration(0,0.3,0.3);
		other.alarm[4] = 4;
	
		other._hpush = -other._hpush*other.bnc;
		other._vpush = -other._vpush*other.bnc;
		other.alarm[3] = 10;

		global.playerBumps+=1;
		global.totalBumps+=1;
		other.bumpsAchievement = false;	
	}
		
}



