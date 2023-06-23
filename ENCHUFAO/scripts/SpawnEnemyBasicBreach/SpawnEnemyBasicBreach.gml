// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnEnemyBasicBreach()
{
	if instance_exists(o_playerShip)
	{
		for (var i=0; i<1; i++)
		{
			enemies = instance_create_layer(x+random_range(-3,3), yprevious+random_range(-2,20), "Enemies", o_enemy_Waiting)
			enemies.waiting = false;
			enemies.image_angle = point_direction(x, y, o_playerShip.x, o_playerShip.y)+random_range(-30,30)
			enemies.direction = enemies.image_angle;
		}
	}
}