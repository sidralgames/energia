// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_Laser_L()
{
	image_index = 2;

	if creatingEnemies && punch = false
	{
		punch = true;
		vspeed -=2*global.relativeSpeed;
	}
	
	if (alarm[3] >=100) && (alarm[3] <=240)
	{
		creatingEnemies = true;	
	}
	if (alarm[3] <=0)
	{
		creatingEnemies = false;
		instance_destroy(o_laserGarbanzo_L)
		punch = false
	}
	
	if (laserCreated = false)
	{
		laserCreated = true;
		laser = instance_create(x-42, y+52, o_laserGarbanzo_L)
		
	}
	
	if instance_exists(laser)
	{
		laser.x = x-42;
		laser.y = y+52;
	}

	
	if instance_exists(laser) && (creatingEnemies)
	{
	
		bossSpeed = clamp(bossSpeed, 0, 3);
		hspeed -=0.02*global.relativeSpeed;
		vspeed -=0.05*global.relativeSpeed;
		laser.x = x-42;
		laser.y = y+52;
	}
	else
	{
		speed = bossSpeed*global.relativeSpeed;
	}

	
	
	if (contAttack<=0)
	{
		contIdl = random_range(100, 150);
		state = BOSS2STATE.IDLE;
		attackingFast = false;
		stopping = false;
		creatingEnemies = true;
		drawflash=true
		laserCreated = false
		image_index = 0;	
	}
	
}