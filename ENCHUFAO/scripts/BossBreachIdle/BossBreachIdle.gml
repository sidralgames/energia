// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossBreachIdle()
{
	
	if (!global.BossBreach_awaken)
	{
		if (initialHp <= 0) 
		{
			if (imageChanged = false)
			{
				sprite_index = spriteStart;
				image_index = 27;
				imageChanged = true;
			}
			
			if (sprite_index = spriteStart)
			{
				image_speed = -imageSpeed;
	
				if (image_index <=1)
				{
					instance_destroy();
					global.BossBreach_awaken = true;
					o_breachSpawner.canBreach = true;
				}
			}
		}
	}
	else
	{
		if (alarm[4] <= 0)
		{
			alarm[5] = attackTime;
			sprite_index = spriteAttack;
		
			if (global.BossBreach_HP > 50)
			{
				state = BOSSBREACHSTATE.ATTACKONE;	
			}
			else
			{
				state = BOSSBREACHSTATE.ATTACKTWO;
			}
		}
	}
	
}