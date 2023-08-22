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
					o_nextRoom.canSelectShip = true;
					_visible = false;
		
				}break;
				case 2:
				{
					instance_create(x,y,o_menuAchievements);
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
