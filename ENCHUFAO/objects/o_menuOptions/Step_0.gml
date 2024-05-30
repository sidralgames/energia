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
			factor = 0.08;
		}

		if (key_upP)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			selected -=1;	
			factor = 0.08;
		}

		if (selected > 5)
		{
			selected = 0;	
		}

		if (selected < 0)
		{
			selected = 5;	
		}

		if (key_x)
		{
			audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
			switch(selected)
			{
				case 0:
				{
					_visible = false;
					instance_create(x,y,o_controlsMenu);
					instance_destroy();
				}
				break;
				case 1:
				{
					_visible = false;
					instance_create(x,y,o_menuGameSettings);
					instance_destroy();
		
				}break;
				
				case 2:
				{
					//o_nextRoom.alarm[0] = 60;
					//o_nextRoom.canSelectShip = true;
					//o_nextRoom.goToChillRoom = true;
					//Stats._visible = true;
					//_visible = false;
				}break;
				
				case 3:
				{
					_visible = false;
					instance_create(x,y,o_creditsMenu);
					instance_destroy();
		
				}break;
				case 4:
				{
					instance_create(x,y,o_menuGodModeOptions)
					instance_destroy();
					//global.godModeIsOn = !global.godModeIsOn;
		
				}break;
				
				case 5:
				{
					_visible = false;
					instance_destroy();
					instance_create(x,y,o_menuHome);
		
				}break;
			}
		}
		
		if (key_back)
		{
			audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
			_visible = false;
			instance_destroy();
			instance_create(x,y,o_menuHome);
		}
	
	}

}
