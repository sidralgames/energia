/// @description Insert description here
// You can write your code in this editor


if (global.totalEnemiesOnLevel > global.totalEnemiesOnLevelMax)
{
	instance_destroy();	
}
else
{
	hp = random_range(300,600);
	petaCreated = false;
	soundClose = false;
	soundOpen = false;
	alarm[0] = 30;
	alarm[1] = hp;
	image_speed = 0.75;
	
	if (room = Sala_0)
	{
		instance_create_layer(x,y,"Banners",o_breachBanner)
	}
	
	global.breachBanner = true;
	contBanner = 0;

	if (room = Sala_FirstBoss)
	{
		spawn = 5
	}
	else
	{
		spawn = irandom(4)	
	}

	if spawn = 4
	{
		minRate = random_range(3,7)
		maxRate = random_range(20,40)
	}
	else
	{
		minRate = random_range(5,10)
		maxRate = random_range(30,40)
	}
	enemiesBorn = 0;
}


