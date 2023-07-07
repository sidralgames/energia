// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnEnemyBasicAndFastBreach()
{
	if instance_exists(o_playerShip)
	{
		for (var i=0; i<1; i++)
		{	
			peta =  choose(o_enchufePETA,o_enchufePETAAll,o_enchufePETAShield,o_enchufePETAAmmo,o_enchufePETAHP)
			
			enemy = choose(o_enemy,o_enemyFast,o_enemy,o_enemyFast,o_enemy,o_enemyFast,o_enemy,o_enemyFast,peta)
			enemies = instance_create_layer(x+random_range(-3,3), yprevious+random_range(-2,20), "Enemies", enemy)
			
			if instance_exists(enemies)
			{
				enemies.isCounted = false;
				enemies.state = ENEMYSTATE.CHASING;
				enemies.image_angle = point_direction(x, y, o_playerShip.x, o_playerShip.y)+random_range(-30,30)
				enemies.direction = enemies.image_angle;
			}
		}
	}
}