/// @description Insert description here
// You can write your code in this editor

Controls_Input();

if (key_upP)
{
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	selected -=1;

}

if (key_downP)
{
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	selected+=1;

}

if (selected > 2)
{
	selected = 0;	
}

if (selected < 0)
{
	selected = 2;	
}

if (key_x)
{
	audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
	switch(selected)
	{
		case 0: o_pause.alarm[0] = 5; break;
		case 1: spriteBack = 1;
		case 2: 
		{
			SaveGame();
			with(o_main)
			{
				FreeLightSurface();
				ActivateAndDestroy();
			};
		}
		break;
	}
}

