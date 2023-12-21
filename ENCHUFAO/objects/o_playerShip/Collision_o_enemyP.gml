/// @description Insert description here
// You can write your code in this editor
if (global.shields<1) && (other.isImmortal = false)
{
	if (tocado = false) && (other.hurts)
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
			global.spriteKilledBy = other.sprite_index;
			if (other.finalTrail)
			{
				global.killedByTrail = true;
			}
			if (global.spriteKilledBy = s_enemyDisc)
			{
				global.rotationKilledBy = true;
			}
		}
		screenShake(4,30)
		if (other.canBeDestroyed)
		{
			other._hp = 0;
		}
		
		global.hitsTaken+=1;
	}
}





