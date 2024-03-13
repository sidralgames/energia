/// @description Insert description here
// You can write your code in this editor

Controls_Input();

if (key_back)
{
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	menuHome = instance_create(x,y,o_menuHome);
	menuHome.alarm[0]=10;
	menuHome._visible = true;
	instance_destroy();
	o_nextRoom._visible = true;
}


if (key_upP)
{
	selected-=1;
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
	
}
if (key_downP)
{
	selected+=1;
	audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
}


if (selected > 4)
{
	selected  = 0	
}

if (selected < 0)
{
	selected = 4
}


if (selected = 3)
{
	if (key_rightP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		initialX = 200;
		selectedBest+=1;
		xScale = 1;
		tipChoosed = false;
		part_type_direction(global.EnemyKilledBy_part,175,185,0,1);
	}
	if (key_leftP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		initialX = 440;
		selectedBest-=1;
		xScale = -1;
		tipChoosed = false;
		part_type_direction(global.EnemyKilledBy_part,355,5,0,1);
	}
	
	if (selectedBest > global.numberOfEnemiesBestiary-1)
	{
		selectedBest  = 0	
	}
	if (selectedBest < 0) 
	{
		selectedBest = global.numberOfEnemiesBestiary-1;
	}
}


if (selected = 1)
{
	if (key_rightP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedAch+=1;
	}
	if (key_leftP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selectedAch-=1;
	}
	
	if (selectedAch > global.numberOfAch-1)
	{
		selectedAch  = 0	
	}
	if (selected < 0) 
	{
		selectedAch = global.numberOfAch-1
	}
}


switch(selected)
{
	case 0:
	{

	}
	break;
	
	case 1:
	{
		
	}
	break;
	
	case 2:
	{
		
	}
	break;
	
	case 3:
	{
		
	}
	break;
	
	case 4:
	{
		if (key_x)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			menuHome = instance_create(x,y,o_menuHome);
			menuHome.alarm[0]=10;
			menuHome._visible = true;
			instance_destroy();
			o_nextRoom._visible = true;
		}
		
	}
	break;
}