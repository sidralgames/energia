/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	x=o_playerShip.x;
	y = o_playerShip.y
}

Controls_Input();

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
	}
	if (key_downP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selected+=1;
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
						selected = 0;
					}
					break;
			
					case 1:
					{
						goToMenu = true;
						
					}
					break;
			
					case 2:
					{
						showControls  = true;
					}
					break;
				
					case 3:
					{
						SaveGame();
						game_restart();
					}
					break;
				}
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
		
			if (key_x)
			{
				audio_play_sound_on(global.audioEmitter,snd_acceptMenu,false, 50);
				
				switch(selected)
				{
					case 0: 
					{
						o_pause.alarm[0] = 5; 
						selected = 0;
					}
					break;
			
					case 1: 
					{
						global.screenshakeIsOn = !global.screenshakeIsOn;
					}
					break;
					
					case 2: 
					{
						global.assistedAim = !global.assistedAim;
					}
					break;
					
					case 3: 
					{
						global.assistSlowmoIsOn = !global.assistSlowmoIsOn;
					}
					break;
			
					case 4:
					{
						goToMenu = false;
					}
					break;
				
					case 5:
					{
						SaveGame();
						game_restart();
					}
					break;
				}
			}
		}
	}
}
