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
					global.infiniteEnergyIsOn = !global.infiniteEnergyIsOn;
				}break;
				
				case 1:
				{
					global.infiniteAmmoIsOn = !global.infiniteAmmoIsOn;
		
				}break;
				
				case 2:
				{
					global.infiniteLaserIsOn = !global.infiniteLaserIsOn;
		
				}break;
				
				case 3:
				{
					global.infiniteHPIsOn = !global.infiniteHPIsOn;
		
				}break;
				
				case 4:
				{
					if (global.infiniteAmmoIsOn) || (global.infiniteEnergyIsOn) 
					|| (global.infiniteHPIsOn) || (global.infiniteLaserIsOn)
					{
						global.godModeIsOn = true;	
					}
					else
					{
						global.godModeIsOn = false;		
					}
					_visible = false;
					instance_destroy();
					instance_create(x,y,o_menuOptions);
		
				}break;
			}
		}
	
	}

}
