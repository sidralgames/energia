/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	x=o_playerShip.x;
	y = o_playerShip.y
}

Controls_Input();

w = surface_get_width(global.mainSurf)
_scale = display_get_width() / w;

if (goToMenu)
{
	spriteBack+=0.7;
	if (spriteBack >=7)
	{
		spriteBack = 7;
	}
	
}
else
{
	spriteBack-=0.8;
	if (spriteBack <=1)
	{
		spriteBack = 0;
	}
	
}
if (pause)
{
	if (key_upP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selected -=1;
		quit = false;
	}
	
	if (key_downP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selected+=1;
		quit = false;
	}
	
	if (showControls)
	{
		if (key_x)
		{
			audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
			showControls = false;
		}	
	}
	else
	{
		if (spriteBack = 0)
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
						o_pause.alarm[0] = 5;
						alarm[2] = 10;
						selected = 0;
					}
					break;
			
					case 1:
					{
						goToMenu = true;
						selected = 0;
						
					}
					break;
			
					case 2:
					{
						showControls  = true;
					}
					break;
				
					case 3:
					{
						if (quit)
						{
							SaveGame();
							instance_activate_all();
							with(o_main)
							{
								instance_activate_all();
								ending = true;
								endTimer = 10;
							}
						}
						else
						{
							quit = true;
						}
					}
					break;
				}
			}
			
			if (key_back)
			{
				audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
				o_pause.alarm[0] = 5;
				alarm[2] = 10;
				selected = 0;
			}
			
		}
		else
		{
			if (selected > 5)
			{
				selected = 0;	
			}
			if (selected < 0)
			{
				selected = 5;	
			}
			
			if (selectedCross > global.crosshairSpritesMax)
			{
				selectedCross = 0;	
			}
			if (selectedCross < 0)
			{
				selectedCross = global.crosshairSpritesMax;	
			}

			switch(selected)
			{
				case 0: 
				{
					if (key_x)
					{
						audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
						global.screenshakeIsOn = !global.screenshakeIsOn;
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
						case 0: { global.crosshairSprite = s_crosshair }break;
						case 1: { global.crosshairSprite = s_crosshair_1 }break;
						case 2: { global.crosshairSprite = s_crosshair_2 }break;
						case 3: { global.crosshairSprite = s_crosshair_3 }break;
						case 4: { global.crosshairSprite = s_crosshair_4 }break;
						case 5: { global.crosshairSprite = s_crosshair_5 }break;
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
					if (key_x)
					{
						audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
						goToMenu = false;
					}
				}
				break;
			
				case 5:
				{
					if (key_x)
					{
						audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
						
						if (quit)
						{
							instance_activate_all();
							SaveGame();
							with(o_main)
							{
								instance_activate_all();
								ending = true;
								endTimer = 10;
							}
						}
						else
						{
							quit = true;
						}
					}
				}
				break;
			}
			
			if (key_back)
			{
				audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
				goToMenu = false;
			}
		}
	}
}
