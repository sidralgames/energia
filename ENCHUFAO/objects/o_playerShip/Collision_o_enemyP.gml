/// @description Insert description here
// You can write your code in this editor
if (global.hp >= 1)
{
	if (global.shields<1) //&& (other.isImmortal = false)
	{
		if (tocado = false) && (other.hurts)
		{
			gamepad_set_vibration(0,0.5,0.5);
			alarm[4] = 10;
			flashAlpha = 1;
			audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
			alarm[1] = 30
			tocado = true;
			
			if (other.canBeDestroyed)
			{
				if (global.hp > 1)
				{
					other._hp = 0;
				}
			}
			
			global.hp -= 1 * global.damageReceived;
			
		
			if (global.hp - (1 * global.damageReceived) < 1)
			{
				if (other.sprite_index != s_shieldPurple)
				{
					global.numEnemyKilledBy = other.enemyBestiaryNumber;
				
					if (other.finalTrail)
					{
						global.FinalTrail = true;
					}
				}
				else
				{
					global.numEnemyKilledBy = other.enemyShooter;
					global.FinalTrail = other.shooterTrail;
				
				}
			}
			
			screenShake(4, 30, 5);
			
			global.hitsTaken+=1;
		}
	}
}




