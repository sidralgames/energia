/// @description Insert description here
// You can write your code in this editor
Controls_Input()
if !instance_exists(o_playerShip)
{
if (key_right_p) 
{
	selected +=1;
}
if (key_left_p)
{
	selected -=1;
}

if (selected < 0)
{
	selected = 2;
}
else if (selected > 2)
{
	selected  = 0;
}

switch(selected)
{
	case 0:
	{
		PlayerStats_Green()
	}break;
	
	case 1:
	{
		PlayerStats_Blue()
	}break;
	
	case 2:
	{
		PlayerStats_Red()
	}break;
	
}
}


