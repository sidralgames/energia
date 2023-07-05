// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossBreachStart()
{
	if (image_index >= 27)
	{
		image_index = 22;
	}
	
		if (alarm[3] <= 0)
		{
			sprite_index = spriteIdle;
			alarm[4] = idleTime;
			state = BOSSBREACHSTATE.IDLE;
		
		}
	
}