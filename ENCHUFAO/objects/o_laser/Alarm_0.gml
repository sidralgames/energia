/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(sndActivating);

if instance_exists(colLaser)
{
	if (inScreen) || (colLaser.inScreen)
	{
		soundLaser = audio_play_sound_on(global.audioEmitter, snd, true, 50)
		audio_play_sound_on(global.audioEmitter, snd_laserShoot, false, 50)
	}
}
alarm[1] = 120;
//if canShot{
//lightLaser= instance_create_layer(x,y-2-(long/2),"LightEnemy",o_Light_Laser);
//}




