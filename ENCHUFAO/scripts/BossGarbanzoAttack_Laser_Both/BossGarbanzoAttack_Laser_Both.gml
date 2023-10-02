// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_Laser_Both()
{
	image_index = 4;

	if creatingEnemies && (punch = false)
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
		instance_destroy(o_laserGarbanzo_R)
		instance_destroy(o_laserGarbanzo_L)
		punch = false
	}
	
	if (laserCreated = false)
	{
		laserCreated = true;
		laser_r = instance_create(x+42, y+52, o_laserGarbanzo_R)
		laser_r.angleLaser = 260;
		
		laser_l = instance_create(x-42, y+52, o_laserGarbanzo_L)
		laser_l.angleLaser = 280;
		
	}
	
	if instance_exists(laser_l)
	{
		laser_l.x = x-42;
		laser_l.y = y+52;
	}
	if instance_exists(laser_r)
	{			
		laser_r.x = x+42;
		laser_r.y = y+52;
	}
	
	if instance_exists(laser_r) && (creatingEnemies)
	{
	
		bossSpeed = clamp(bossSpeed, 0, 3)
		vspeed -=0.1*global.relativeSpeed;
		laser_r.x = x+42;
		laser_r.y = y+52
		laser_l.x = x-42;
		laser_l.y = y+52;
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
		laserCreated = false;
		punch = false;
		image_index = 0;	
		alarm[3] = 0;
	}
	
}