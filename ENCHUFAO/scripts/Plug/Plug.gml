// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Plug()
{
	global.timesConnected+=1;
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 10;
	
	audio_play_sound_on(global.audioEmitter,choose(snd_plugged, snd_plugged_2, snd_plugged_3),false, 50);
	
	plugged = true;
	enchufe = inEnchufe;
	global.plugging = true;
	enchufe.enchufeActive = true;
	global.xToPlug = enchufe.x;
	global.yToPlug = enchufe.y;
}