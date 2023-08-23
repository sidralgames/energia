/// @description Insert description here
// You can write your code in this editor

Controls_Input();

if (key_upP)
{
	selected -=1;

}

if (key_downP)
{
	selected+=1;

}

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
		case 0: o_pause.alarm[0] = 5; break;
		case 1: spriteBack = 1;
		case 2: 
		{
			SaveGame();
			game_restart();
		}
		break;
	}
}

