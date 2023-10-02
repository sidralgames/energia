// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_1()
{
	image_index = 4;
	
	//bossSpeed = lerp(bossSpeed, 0, 0.09)
	
	speed = bossSpeed*global.relativeSpeed;
	
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
				for (var i=0; i < irandom_range(1,2); i++)
				{
					enemyMini = instance_create_layer(x-40, y+57, "Enemies", o_enemyMini)
					if instance_exists(enemyMini)
					{
						enemyMini.state=ENEMYSTATE.CHASING;
						enemyMini.hspeed= choose(2,-2)
						enemyMini.vspeed= choose(3,2)
				
					}
				}
			
				for (var i=0; i < irandom_range(1,2); i++)
				{
					enemyMini = instance_create_layer(x+40, y+57, "Enemies", o_enemyMini)
					if instance_exists(enemyMini)
					{
						enemyMini.state=ENEMYSTATE.CHASING;
						enemyMini.hspeed= choose(2,-2)
						enemyMini.vspeed= choose(3,2)
					
					}
				}
			alarm[2] = random_range(20,30);
		}
	}
}