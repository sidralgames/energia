// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sound()
{
	var snd = argument[0]; //choose sound
	if !audio_is_playing(snd_song)
	{
		audio_play_sound(snd,1,false);
	}
	 // play sound and set local var
	 
	//audio_sound_gain(play,global.volume,0); //Set this sound to the global volume
	audio_sound_pitch(argument[0],global.pitch); //change pitch
}