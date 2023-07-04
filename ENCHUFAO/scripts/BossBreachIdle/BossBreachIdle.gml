// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossBreachIdle()
{
	if (global.BossBreach_HP > 50)
	{
		state = BOSSBREACHSTATE.ATTACKONE;	
	}
	else
	{
		state = BOSSBREACHSTATE.ATTACKTWO;
	}
}