/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	x=o_playerShip.x;
	y = o_playerShip.y
}

InputMenu();
Controls_Input();

if (goToMenu)
{
	spriteBack+=0.5;
	if (spriteBack >=7)
	{
		spriteBack = 7;
	}
	
}
else
{
	spriteBack-=0.5;
	if (spriteBack <=1)
	{
		spriteBack = 0;
	}
	
}
if (pause)
{
	if (key_upP)
	{
		selected -=1;
	}
	if (key_downP)
	{
		selected+=1;
	}

	if (spriteBack = 0)
	{
		if (selected > 2)
		{
			selected = 0;	
		}

		if (selected < 0)
		{
			selected = 2;	
		}
		
		if (key_x)
		{
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
					selected = 0;
				}
				break;
			
				case 2:
				{
					game_restart();
				}
				break;
			}
		}
	}
	else
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
					goToMenu = false;
					
				}
				break;
				
				case 3:
				{
					game_restart();
				}
				break;
			}
		}
	}
}
