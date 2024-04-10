/// @description Insert description here
// You can write your code in this editor

if (cont = true)
{
	
	//---- KILL CHIPS ----//
	if instance_exists(o_chipFather)
	{
		o_chipFather._hp = 1;
	}
	
	StopSounds();
	
	room_goto(Sala_0);

	
	//global.level+=1;
	
	//if (global.bestLevelRun <= global.level)
	//{
	//	global.bestLevelRun = global.level;
	//}
}



