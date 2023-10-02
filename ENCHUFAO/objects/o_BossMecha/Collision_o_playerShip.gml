/// @description Insert description here
// You can write your code in this editor
with (o_playerShip)
{
	if (tocado = false)
	{
		gamepad_set_vibration(0,0.3,0.3);
		alarm[4] = 10;
		audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
		alarm[1] = 50
		tocado = true;
		global.hp -=1;
		screenShake(4,30)
		global.hitsTaken+=1;
		_hpush = -_hpush*6;
		_vpush = -_vpush*6;
	}
}





