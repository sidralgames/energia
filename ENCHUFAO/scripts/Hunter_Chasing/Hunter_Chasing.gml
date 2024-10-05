// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hunter_Chasing()
{
	if instance_exists(o_playerShip)
	{
		//----------------CHASING MOVENEMT------------------//
		if (inScreen)
		{
			EnemyLeaveTrail();
		}
		
		if (alarm[4] <= 0)
		{
			if (global.haveInvisibiltyCloak && global.invisibleCloak = true) || (global.inSmokeArea = true)
			{
				diffX = choose(random_range(-250, 250));
				diffY = choose(random_range(-250, 250));
			}
			else
			{
				if (enemyIsWorm)
				{
					diffX = choose(random_range(-150, 150));
					diffY = choose(random_range(-150, 150));
				}
				else
				{
					diffX = choose(random_range(-70, 70));
					diffY = choose(random_range(-70, 70));
				}
			}
			
			if (enemyIsWorm)
			{
				alarm[4] = random_range(15, 40)
			}
			else
			{
				alarm[4] = random_range(30, 100)
			}
		}
		
		if instance_exists(o_playerShip)
		{
			switch(attackToDo)
			{
				case "Laser":
				{
					Hunter_LaserIA();
				
				}break;
			
				case "Bouncer":
				{
					EnemyBasicChasingIA();
				
				}break;
			
			}
			
		}
	}
}