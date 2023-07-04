/// @description Insert description here
// You can write your code in this editor

if (cont = true)
{
	global.level+=1;
	if (global.level = 7)
	{
		room_goto(Sala_FirstBoss)
	}
	else
	{
	//if (global.level = 3) || (global.level = 6) || (global.level = 9)
	if (global.level mod 2 == 0)
	{
		room_goto(Sala_Upgade)
	}
	else 
	{
		room_goto(Sala_0)
	}
	}
}



