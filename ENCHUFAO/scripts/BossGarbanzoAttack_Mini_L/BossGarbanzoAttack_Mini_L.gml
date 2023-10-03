// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_Mini_L()
{
	image_index = 2;
	
	//bossSpeed = lerp(bossSpeed, 0, 0.09)
	if (alarm[4] <= 0)
	{
		diffX = choose(random_range(-250, 250));
		diffY = choose(random_range(-250, 250));
		alarm[0] = random_range(90, 160)
	}
	
	if instance_exists(o_playerShip)
	{
		var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
		direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
	}
	
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
				for (var i=0; i < irandom_range(numenemies,numenemies+3); i++)
				{
					enemyMini = instance_create_layer(x-40, y+57, "Enemies", o_enemyMini)
					if instance_exists(enemyMini)
					{
						enemyMini.state=ENEMYSTATE.CHASING;
						enemyMini.hspeed= choose(2,-2)
						enemyMini.vspeed= choose(3,2)
				
					}
				}
			alarm[2] = random_range(20,25);
		}
	}
}