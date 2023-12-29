/// @description Insert description here
// You can write your code in this editor
Controls_Input();

if (alarm[0] <= 0)
{
	
	if (_visible)
	{
		if (key_downP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			selected +=1;	
		}

		if (key_upP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			selected -=1;	
		}
		
		if (global.mandatoryTutorial = 0)
		{
			if (selected > 3)
			{
				selected = 0;	
			}

			if (selected < 0)
			{
				selected = 3;	
			}

			if (key_x)
			{
				audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
				switch(selected)
				{
					case 0:
					{
						audio_play_sound_on(global.audioEmitter,snd_playMenu,false, 50);
						room_goto(Sala_Tutorial);
		
					}
					break;
					case 1:
					{
						instance_create(x,y,o_menuOptions);
						instance_destroy();
						_visible = false;
		
					}
					break;
					case 2:
					{
						instance_create(x,y,o_menuAchievements);
						instance_destroy();
						_visible = false;
		
					}
					break;
					case 3:
					{
						game_end();
		
					}break;
				}
			}
	
		}
		else 
		{
			if (selected > 4)
			{
				selected = 0;	
			}

			if (selected < 0)
			{
				selected = 4;	
			}

			if (key_x)
			{
				audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
				switch(selected)
				{
					case 0:
					{
						o_nextRoom.alarm[0] = 60;
						o_nextRoom.canSelectShip = true;
						Stats._visible = true;
						_visible = false;
					}break;
					
					case 1:
					{
						audio_play_sound_on(global.audioEmitter,snd_playMenu,false, 50);
						room_goto(Sala_Tutorial);
		
					}break;
					
					case 2:
					{
						instance_create(x,y,o_menuOptions);
						instance_destroy();
						_visible = false;
		
					}break;
					
					case 3:
					{
						instance_create(x,y,o_menuAchievements);
						instance_destroy();
						_visible = false;
		
					}break;
					
					case 4:
					{
						game_end();
		
					}break;
				}
			}
	
		}
	}

}
