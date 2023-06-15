/// @description Insert description here
// You can write your code in this editor

if (image_index >= 14)
{
	image_speed = 0;
}

if (alarm[0] <= 0) && (image_index > 12)
{
	SpawnEnemyFastBreach();
	alarm[0] = random_range(10,30)
}

if (alarm[1] <= 0)
{
	o_waller.breachRetryTime = 30;
	instance_destroy();	
}


