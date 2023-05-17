// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Plug()
{
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 10;
	
	audio_play_sound(choose(snd_plugged, snd_plugged_2, snd_plugged_3),50,false);
	
	plugged = true;
	enchufe = instance_nearest(x,y,o_enchufe_Father)
	global.plugging = true;
	
	global.xToPlug = enchufe.x;
	global.yToPlug = enchufe.y;
}