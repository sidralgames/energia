// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_Laser_and_Mini()
{
	image_index = 4;

	if creatingEnemies && (punch = false)
	{
		punch = true;
		vspeed -=0.2*global.relativeSpeed;
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
	
	
	if (creatingEnemies)
	{
		if (alarm[2]<=0)
		{
				for (var i=0; i < irandom_range(numenemies,numenemies+1); i++)
				{
					enemyMini = instance_create_layer(x+40, y+57, "Enemies", o_enemyMini)
					if instance_exists(enemyMini)
					{
						enemyMini.state=ENEMYSTATE.CHASING;
						enemyMini.hspeed= random_range(1,1.1)
						enemyMini.vspeed= random_range(1,1.1)
				
					}
				}
			alarm[2] = random_range(20,25);
		}
	}
	
	
	if (laserCreated = false)
	{
		laserCreated = true;
		
		laser_l = instance_create(x-40, y+52, o_laserGarbanzo_L)
		laser_l.angleLaser = 280;
		
	}
	
	if instance_exists(laser_l)
	{
		laser_l.x = x-42;
		laser_l.y = y+52;
	}

	
	if instance_exists(laser_l) && (creatingEnemies)
	{
	
		bossSpeed = clamp(bossSpeed, 0, 3)

		vspeed -=0.02*global.relativeSpeed;
		hspeed-=0.01*global.relativeSpeed;
		laser_l.x = x-42;
		laser_l.y = y+52;
	}
	else
	{
		speed = bossSpeed*global.relativeSpeed;
	}
	
}