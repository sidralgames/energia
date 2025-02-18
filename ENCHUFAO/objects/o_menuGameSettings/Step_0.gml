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

		if (selected > 6)
		{
			selected = 0;	
		}
		if (selected < 0)
		{
			selected = 6;	
		}
		
		if (selectedCross > global.crosshairSpritesMax)
		{
			selectedCross = 0;	
		}
		if (selectedCross < 0)
		{
			selectedCross = global.crosshairSpritesMax;	
		}
		
		if (graphics > 2)
		{
			graphics = 0;	
		}
		if (graphics < 0)
		{
			graphics = 2;	
		}
		
		if (graphicsResized)
		{
			graphicsResized = false;
			
			if (graphics = 0)
			{
				surface_resize(application_surface, 640,360);
			}
			if (graphics = 1)
			{
				surface_resize(application_surface, 1280,720);
			}
			if (graphics = 2)
			{
				surface_resize(application_surface, display_get_width(),display_get_height());
			}
		}
		
		switch(selected)
		{
			case 0: 
			{
				if (key_x)
				{
					audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
					global.screenshakeIsOn = !global.screenshakeIsOn;
					//screenShake(40,40,0.5)
				}
			}
			break;
			
			case 1: 
			{
				if (key_x)
				{
					audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
					global.assistedAim = !global.assistedAim;
				}
			}
			break;
			
			case 2: 
			{
				if (key_x)
				{
					audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
					global.assistSlowmoIsOn = !global.assistSlowmoIsOn;
				}
			}
			break;
			
			case 3: 
			{
				switch(selectedCross)
				{
					case 0: { global.crosshairSprite = s_crosshair; }break;
					case 1: { global.crosshairSprite = s_crosshair_1; }break;
					case 2: { global.crosshairSprite = s_crosshair_2; }break;
					case 3: { global.crosshairSprite = s_crosshair_3; }break;
					case 4: { global.crosshairSprite = s_crosshair_4; }break;
					case 5: { global.crosshairSprite = s_crosshair_5; }break;
					case 6: { global.crosshairSprite = s_crosshair_6; }break;
				}
				
				if (key_leftP)
				{
					audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
					selectedCross -=1;
				}
				
				if (key_rightP)
				{
					audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
					selectedCross +=1;
				}
			}
			break;
			
			case 4:
			{
				
				if (key_leftP)
					{
						
						graphics -=1;
						audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
						graphicsResized = true
						
					}
				
					if (key_rightP)
					{
						graphics +=1;
						audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
						
						graphicsResized = true
					}
			}
			break;
			
			case 5:
			{
				if (key_x)
				{
					global.soundOn = !global.soundOn;
					if (global.soundOn = false)
					{
						audio_sound_gain(global.song,0,0)	
					}
					else
					{
						audio_sound_gain(global.song,1,1)
					}
				}
			}
			break;
			case 6:
			{
				if (key_x)
				{
					audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
					_visible = false;
					o_nextRoom._visible = true;
					instance_destroy();
					instance_create(x,y,o_menuOptions);
				}
			}
			break;
		}
	}
	
	if (key_back)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		_visible = false;
		o_nextRoom._visible = true;
		instance_destroy();
		instance_create(x,y,o_menuOptions);
	}
	
}
