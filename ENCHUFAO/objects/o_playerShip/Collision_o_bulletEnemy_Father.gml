/// @description Insert description here
// You can write your code in this editor
if (global.shields<1)
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
			global.numEnemyKilledBy = other.enemyShooter;
			global.FinalTrail = other.shooterTrail;
		}
		instance_destroy(other);
		screenShake(4,30);
		global.hitsTaken+=1;
	}
}





