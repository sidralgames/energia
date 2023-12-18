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
					if (global.playTimes > 0)
					{
						o_nextRoom.alarm[0] = 60;
						o_nextRoom.canSelectShip = true;
						Stats._visible = true;
						_visible = false;
					}
					else
					{
						instance_create(x,y,o_tutorialText)
						audio_play_sound_on(global.audioEmitter,snd_playMenu,false, 50);
						shipSelected = true;
						_visible = false;
						o_nextRoom._visible = false;
						instance_create_layer(__view_get( e__VW.XView, 0 )+420,__view_get( e__VW.YView, 0 )+180, "Enchufes", o_enchufe)
						player = instance_create_layer(x,y+100,"Player", o_playerShip)
						global.hp = 1;
						global.ammo = 0;
						global.energy = 100;
						global.laser = 0;
					}
		
				}break;
				case 1:
				{
					instance_create(x,y,o_menuOptions);
					instance_destroy();
					_visible = false;
		
				}break;
				case 2:
				{
					instance_create(x,y,o_menuAchievements);
					instance_destroy();
					_visible = false;
		
				}break;
				case 3:
				{
					game_end();
		
				}break;
			}
		}
	
	}

}
