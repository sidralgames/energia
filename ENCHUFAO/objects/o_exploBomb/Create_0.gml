/// @description Insert description here
// You can write your code in this editor

inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

if (inScreen)
{
	audio_stop_sound(snd_explo_old);
	audio_play_sound_on(global.audioEmitter, snd_explo_old, false, 5,,,random_range(0.8,1))
}
isFromBullet = false;
drawflash = true
alarm[0] = 1
scale=1;
damagePlayer = false;
scaleShockwave = scale;
scaleShake = scale