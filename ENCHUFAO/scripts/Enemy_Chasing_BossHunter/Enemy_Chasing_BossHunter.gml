// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Chasing_BossHunter()
{
	if instance_exists(o_playerShip)
	{
		//--------BOUNCE WITH EACH OTHER---------//
		//if (thisEnemyBounce)
		//{
		//	if (enemyIsMini)
		//	{
		//		enemyToBounce = collision_circle(x,y,4,o_enemyP,false,true)
		//	}
		//	else
		//	{
		//		enemyToBounce = collision_circle(x,y,10,o_enemyP,false,true)
		//	}
		
		
		//	if  enemyToBounce && (enemyToBounce.canBounce = true) && (!bounced) && (enemyToBounce.isShield = false)
		//	{
		//		bounced = true;
		//		alarm[8] = 20;
		//	    direction = direction+choose(random_range(30,50),random_range(-30,-50))
		//		_angle = direction;
		//	} 
	
		//	if (alarm[8] <= 0)
		//	{
		//		bounced = false;	
		//	}
		//}
	
	//-----------TAKE COVER-------------//
	
		EnemyTakeCover();
	
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

			EnemyBasicChasingIA();
			
		}
	}
}