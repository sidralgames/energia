/// @description Insert description here
// You can write your code in this editor
if (damaging)
{
	if instance_exists(o_playerShip)
	{
		exploChip = instance_create_layer(o_playerShip.x,o_playerShip.y,"Player", o_exploPurple)
		exploChip.image_xscale = 0.4;
		exploChip.image_yscale = 0.4;
	
		with (o_playerShip)
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
			
				if (global.hp <1)
				{
					global.numEnemyKilledBy = other.enemyBestiaryNumber;
					global.FinalTrail = false;
				}
			
				screenShake(4,30);
				global.hitsTaken+=1;
			}
		}
	}
}

	
global.chipsLaserTot -=1;

event_inherited()



