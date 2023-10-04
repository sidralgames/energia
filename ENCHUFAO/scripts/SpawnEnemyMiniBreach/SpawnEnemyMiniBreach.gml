// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnEnemyMiniBreach()
{
	if instance_exists(o_playerShip)
	{
		for (var i=0; i<1; i++)
		{
			if (global.allPETAisMulti)
			{
				peta = o_enchufePETAAll;
			}
			else
			{
				peta =  choose(o_enchufePETA,o_enchufePETAAll,o_enchufePETALaser,
				o_enchufePETAAmmo,o_enchufePETAAmmo,o_enchufePETAAmmo,o_enchufePETAHP);
			}
			
			if (petaCreated = false)
			{
				enemy = choose(o_enemyMini,o_enemyMini,o_enemyMini,o_enemyMini,o_enemyMini,o_enemyMini,o_enemyMini,o_enemyMini,o_enemyMini, peta)
			}
			else
			{
				enemy = o_enemyMini;
			}
			
			if (enemy = peta)
			{
				layerID = "Enchufes";
			}
			else
			{
				layerID = "Enemies";	
			}
			
			enemies = instance_create_layer(x+random_range(-3,3), y+random_range(-2,20), layerID, enemy)
			
			if instance_exists(enemies)
			{
				if (enemy = peta)
				{
					dire = point_direction(x,y,o_playerShip.x, o_playerShip.y)+random_range(-5,5)
					enemies._hpush = lengthdir_x(3,dire)
					enemies._vpush = lengthdir_y(3,dire)
					enemies.bornFromBreach = true;
					petaCreated = true;
				}
				else
				{
					enemies.isCounted = false;
					enemies.state = ENEMYSTATE.CHASING;
					enemies._angle = point_direction(x, y, o_playerShip.x, o_playerShip.y)+random_range(-30,30)
					enemies.direction = enemies._angle;
				}
			}
			
			
		}
	}
}