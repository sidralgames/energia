/// @description Insert description here
// You can write your code in this editor

if (image_index >= 53)
{
	image_speed = 0;
}
switch (spawn)
{
	case 0:
	{
		if (alarm[0] <= 0) && (image_index > 50)
		{
			SpawnEnemyBasicBreach();
			alarm[0] = random_range(minRate,maxRate)
		}
	}
	break;
	
	case 1:
	{
		if (alarm[0] <= 0) && (image_index > 50)
		{
			SpawnEnemyFastBreach();
			alarm[0] = random_range(minRate,maxRate)
		}
	}
	break;
	
	case 2:
	{
		if (alarm[0] <= 0) && (image_index > 50)
		{
			SpawnEnemyBasicAndFastBreach();
			alarm[0] = random_range(minRate,maxRate)
		}
	}
	break;
	
	case 3:
	{
		if (alarm[0] <= 0) && (image_index > 50)
		{
			SpawnEnemyMiniAndFastBreach();
			alarm[0] = random_range(minRate,maxRate)
		}
		
	}
	break;
	case 4:
	{
		if (alarm[0] <= 0) && (image_index > 50)
		{
			SpawnEnemyMiniBreach();
			alarm[0] = random_range(minRate,maxRate)
		}
		
	}
	break;
	case 5:
	{
		if (alarm[0] <= 0) && (image_index > 50)
		{
			SpawnBulletEyeAndPeta();
			alarm[0] = random_range(minRate,maxRate)
		}
		
	}
	break;
	
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
	if (room = Sala_0)
	{
		o_waller.breachRetryTime = 40;
	}
	image_speed = -1;
	
	if (image_index <=10)
	{
		instance_destroy();	
	}
}