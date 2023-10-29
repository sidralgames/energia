// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_Bomb()
{
	image_index = 4;
	
	bossSpeed = lerp(speed, 0, 0.009)
	
	speed = bossSpeed*global.relativeSpeed;
	speed = clamp(speed, 0, 4)
	
	if (alarm[3] >=100) && (alarm[3] <=240)
	{
		creatingEnemies = true;	
	}
	if (alarm[3] <=0)
	{
		creatingEnemies = false;	
	}
	if (creatingEnemies)
	{
		if (alarm[2]<=0)
		{
			alarm[6] = 5;
			screenShake(2,5)
			gamepad_set_vibration(0,0.1,0.1);
			attackType = choose(0,1,2)
			if (attackType  = 0)
			{
					bulletBomb = instance_create_layer(x-40, y+57, "Enemies", o_bulletBossGarbanzo_Bomb)
					if instance_exists(bulletBomb)
					{
						vspeed-=1;
						hspeed-=1;
						bulletBomb._hpush= random_range(1,4) + hspeed
						bulletBomb._vpush= random_range(4,9) + vspeed;
						bulletBomb.scale = 0.65;
				
					}
			}
			else if (attackType = 1)
			{
				
					bulletBomb = instance_create_layer(x+40, y+57, "Enemies", o_bulletBossGarbanzo_Bomb)
					if instance_exists(bulletBomb)
					{
						vspeed-=1;
						hspeed+=1;
						bulletBomb._hpush= random_range(-1,-4) + hspeed
						bulletBomb._vpush= random_range(4,9) + vspeed;
						bulletBomb.scale = 0.65;
					
					}
			}
			else if (attackType = 2)
			{
				
					bulletBomb = instance_create_layer(x+40, y+57, "Enemies", o_bulletBossGarbanzo_Bomb)
					if instance_exists(bulletBomb)
					{
						vspeed-=1.5;
						bulletBomb._hpush= random_range(-1,-4) + hspeed
						bulletBomb._vpush= random_range(4,9) + vspeed;
						bulletBomb.scale = 0.65;
					
					}
					bulletBomb = instance_create_layer(x-40, y+57, "Enemies", o_bulletBossGarbanzo_Bomb)
					if instance_exists(bulletBomb)
					{
				
						bulletBomb._hpush= random_range(1,4) + hspeed
						bulletBomb._vpush= random_range(4,9) + vspeed;
						bulletBomb.scale = 0.65;
				
					}
			}
				
			alarm[2] = random_range(minBombTime,maxBombTime);
		}
	}

}