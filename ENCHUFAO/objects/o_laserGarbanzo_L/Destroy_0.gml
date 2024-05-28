/// @description Insert description here
// You can write your code in this editor
gamepad_set_vibration(0,0,0)

if audio_is_playing(soundLaser)
{
	audio_sound_gain(soundLaser, 0, 300);
}

if instance_exists(o_BossMecha_Inside)
{
	if (o_BossMecha_Inside.hp <= 0)
	{
		audio_stop_sound(soundLaser);
		audio_stop_sound(soundCharge);
	}
}




