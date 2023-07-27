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
		selected = global.numberOfShips-1;
	}
	else if (selected > global.numberOfShips-1)
	{
		selected  = 0;
	}

	ship = ds_map_find_value(global.shipList,selected);
		
	switch(ship.position)
	{
		case 0: {
			PlayerStats_Green()
			} break;
		case 1:
		{
			PlayerStats_Blue()
			} break;
		case 2:
		{
			PlayerStats_Red()
			} break;
		case 3:
		{
			PlayerStats_Dark()
			} break;
		case 4:
		{
			PlayerStats_Purple()
		}break;
	}
}


