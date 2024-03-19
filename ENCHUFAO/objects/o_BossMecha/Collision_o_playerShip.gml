/// @description Insert description here
// You can write your code in this editor
with (o_playerShip)
{
	if (global.shields <= 0)
	{
		if (tocado = false)
		{
			gamepad_set_vibration(0,0.3,0.3);
			alarm[4] = 10;
			audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
			alarm[1] = 50
			tocado = true;
			global.hp -= 1 * global.damageReceived;
			if (global.hp <= 0)
			{
				global.FinalTrail = false;
				global.numEnemyKilledBy = s_bossMechaActive;
			}
			
			screenShake(4,30)
			global.hitsTaken+=1;
			if (o_BossMecha.attack != 0)
			{
				_hpush = -_hpush*6;
				_vpush = -_vpush*6;
			}
		}
	}
}





