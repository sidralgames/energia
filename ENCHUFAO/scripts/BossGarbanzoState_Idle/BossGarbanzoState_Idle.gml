// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoState_Idle()
{
	bossSpeed = 0.75;
	speed = lerp(speed,bossSpeed, 0.005);
	
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
		

	
	//_angle = direction;	
	
	contIdl --;
	image_index = 0;
	if (contIdl <= 0)
	{
		
		attack = choose(0,0,0,1);
		if (attack = 0)
		{
			contStop = 60;
			contAttack = random_range(200,300)
		}
		else if (attack = 1)
		{
			contAttack = random_range(350,450)
			creatingEnemies = false;
			alarm[3] = 300	
		}
		state = BOSS2STATE.ATTACK;
	}
}