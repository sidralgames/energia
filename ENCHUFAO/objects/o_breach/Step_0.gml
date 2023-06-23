/// @description Insert description here
// You can write your code in this editor

if (image_index >= 53)
{
	image_speed = 0;
}

if (alarm[0] <= 0) && (image_index > 50)
{
	SpawnEnemyFastBreach();
	alarm[0] = random_range(minRate,maxRate)
}

if (global.breachBanner) 
{
	contBanner +=1;
}

if (contBanner >= 100)
{
	global.breachBanner = false;
	contBanner = 0;
}

if (alarm[1] <= 0)
{
	o_waller.breachRetryTime = 30;
	image_speed = -1;
	
	if (image_index <=10)
	{
		instance_destroy();	
	}
}