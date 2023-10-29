// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingAnchored()
{
	if instance_exists(o_playerShip)
	{

		//----------------CHASING MOVENEMT------------------//
		
		if (alarm[4] <= 0)
		{
			if (global.haveInvisibiltyCloak && global.invisibleCloak = true) || farDist = 0.7
			{
				diffX = choose(random_range(-50, 50));
				diffY = choose(random_range(-50, 50));
			}
			else
			{
				diffX = choose(random_range(-1, 1));
				diffY = choose(random_range(-1, 1));
			}
			alarm[4] = random_range(100, 160)
		}

		if instance_exists(o_playerShip)
		{
			EnemyBasicChasingIAAnchored();
		}
	}
}