// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingFarSniper()
{

	if instance_exists(o_playerShip)
	{
		
		canAim--;
		recoil--;
		
		if (alarm[4] <= 0)
		{
	
			diffX = choose(random_range(-50, -60), random_range(50,60));
			diffY = choose(random_range(-50, -60), random_range(50,60));
			alarm[4] = random_range(30, 60)
		}
		
		if (isSniper)
		{
			EnemySniperIA();
		}
		
		if (isBomber)
		{
			EnemyBomberIA();
		}
		
	}
}