/// @description Insert description here
// You can write your code in this editor

if (image_index >=39) && (image_index <=42)
{
	if (soundOpen = false)
	{
		soundOpen = true;
		audio_play_sound_on(global.audioEmitter, snd_breachOpen, false, 50);
	}
}
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
	
	case 6:
	{
		if (alarm[0] <= 0) && (image_index > 50)
		{
			SpawnEnemyMitosisBreach();
			alarm[0] = random_range(minRate,maxRate)
		}
		
	}
	break;
	
}


if (global.breachBanner) 
{
	contBanner +=1;
}

if (contBanner >= 60)
{
	global.breachBanner = false;
	contBanner = 0;
}

if (alarm[1] <= 0)
{
	
	if (soundClose = false)
	{
		soundClose = true;
		audio_play_sound_on(global.audioEmitter, snd_breachClose, false, 50);
	}
	image_speed = -1;
	
	if (image_index <=10)
	{
		if (room = Sala_0)
		{
			o_waller.alarm[3] = random_range(800,1000);
		}
		instance_destroy();	
	}
}

if (global.totalEnemiesOnLevel >= global.totalEnemiesOnLevelMax + 10)
{
	alarm[1] = 0;	
}