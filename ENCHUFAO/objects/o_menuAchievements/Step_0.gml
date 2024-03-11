/// @description Insert description here
// You can write your code in this editor

Controls_Input();

if (key_x) || (key_back)
{
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	menuHome = instance_create(x,y,o_menuHome);
	menuHome.alarm[0]=10;
	menuHome._visible = true;
	instance_destroy();	
}


if (key_rightP)
{
	selected+=1;
	
}
if (key_leftP)
{
	selected-=1;
	
}

if selected > global.numberOfAch-1
{
	selected  = 0	
}

if selected < 0 
{
	selected = global.numberOfAch-1
}