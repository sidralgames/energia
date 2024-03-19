/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (alarm[0] <=0)
{
	instance_destroy();
}

if collision_circle(x,y,120,o_playerShip, false, true)
{
	with(o_playerShip)
	{
		if (tile_meeting(x,y,"Tiles"))
		{
			instance_create(x,y,o_exploBomb);
			gamepad_set_vibration(0,0.3,0.3);
			alarm[4] = 10;
			audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
			alarm[1] = 30
			tocado = true;
			global.hp -= 1 * global.damageReceived;
			if (global.hp <= 0)
			{
				global.numEnemyKilledBy = s_bossWorm_Mouth_Metal;
			}
			screenShake(4,30);		
			global.hitsTaken+=1;
		}
	}

	instance_destroy();
}



