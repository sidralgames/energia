/// @description Insert description here
// You can write your code in this editor

if (cont = true)
{
	global.level+=1;
	
	if (global.bestLevelRun <= global.level)
	{
		global.bestLevelRun = global.level;
	}
	
	if (global.level = 7)
	{
		room_goto(Sala_SecondBoss)
	}
	else
	{
		//if (global.level = 3) || (global.level = 6) || (global.level = 9)
		if (global.level mod 2 == 0)
		{
			global.XPpoints += global.level*100;
			room_goto(Sala_Upgade)
		}
		else 
		{
			if instance_exists(o_upgradesManager)
			{
				instance_destroy(o_upgradesManager);
			}
		
			room_goto(Sala_0)
		}
	}
}



