// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossBreachStart()
{
	if (global.BossBreach_awaken)
	{
		state = BOSSBREACHSTATE.IDLE;
	}
	else
	{
		if (initialHp <= 0) 
		{
			global.BossBreach_awaken = true;
			o_breachSpawner.canBreach = true;
			instance_destroy();
			
		}
	}
}