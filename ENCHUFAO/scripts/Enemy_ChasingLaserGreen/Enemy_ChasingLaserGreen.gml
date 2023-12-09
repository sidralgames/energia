// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingLaserGreen()
{
	if instance_exists(o_playerShip)
	{
	
		//----------------CHASING MOVENEMT------------------//
		inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
		(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

		if (inScreen)
		{
			if (leavesTrail)
			{
				part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)
				contParts = contPartsInitial;
			}
		}
		
		if (alarm[4] <= 0)
		{
			if (global.haveInvisibiltyCloak && global.invisibleCloak = true)
			{
				diffX = choose(random_range(-250, 250));
				diffY = choose(random_range(-250, 250));
			}
			else
			{

				diffX = choose(random_range(-50, 50));
				diffY = choose(random_range(-50, 50));

			}
	
			alarm[4] = random_range(30, 60)

		}

		if instance_exists(o_playerShip)
		{
			EnemyLaserIA();
		}
	}
}