// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoChooseAttack()
{
	if (contIdl <= 0)
	{
		if (o_BossMecha_Inside.hp >= 100)
		{
			minBombTime = 60;
			maxBombTime = 120;
			
			stageSpeed = 3.8;
			numenemies = 1;
			
			if (o_playerShip.y > y)
			{
				attack = choose(0,0,2,3,4,5,6,7,7,9)
			}
			else
			{
				attack = choose(0,0,0,1,4,5,6,7,9)
			}
		}
		else if (o_BossMecha_Inside.hp >= 50) && (o_BossMecha_Inside.hp < 100)
		{
			minBombTime = 40;
			maxBombTime = 100;
			
			stageSpeed = 4.3;
			numenemies = 2;
			attack = choose(0,0,0,0,1,2,3,4,5,6,7,9);
		}
		else
		{
			minBombTime = 30;
			maxBombTime = 80;
			
			stageSpeed = 5;
			numenemies = 3;
			attack = choose(0,0,0,1,2,3,4,5,6,7,9);
		}
		
		
		if (attack = 0)
		{
			contStop = 60;
			contAttack = random_range(200,300)
		}
		else if (attack = 7)
		{
			creatingEnemies = false;
			alarm[3] = 300	
			contAttack = random_range(200,240)
		}
		else 
		{
			contAttack = random_range(350,450)
			creatingEnemies = false;
			alarm[3] = 300	
		}
		state = BOSS2STATE.ATTACK;
	}
}