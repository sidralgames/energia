/// @description Insert description here
// You can write your code in this editor
Controls_Input();

if (alarm[0] <= 0)
{
	
	if (_visible)
	{
		if (key_downP)
		{
			selected +=1;	
		}

		if (key_upP)
		{
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
					global.screenshakeIsOn = !global.screenshakeIsOn;
		
				}break;
				case 2:
				{
					_visible = false;
					instance_create(x,y,o_creditsMenu);
					instance_destroy();
		
				}break;
				case 3:
				{
					instance_create(x,y,o_menuGodModeOptions)
					instance_destroy();
					//global.godModeIsOn = !global.godModeIsOn;
		
				}break;
					case 4:
				{
					_visible = false;
					instance_destroy();
					instance_create(x,y,o_menuHome);
		
				}break;
			}
		}
	
	}

}
