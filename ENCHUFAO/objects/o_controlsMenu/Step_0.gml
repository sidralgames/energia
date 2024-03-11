/// @description Insert description here
// You can write your code in this editor

Controls_Input();

if (key_x) || (key_back)
{
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	instance_destroy();
	instance_create(x,y,o_menuOptions);	
}


