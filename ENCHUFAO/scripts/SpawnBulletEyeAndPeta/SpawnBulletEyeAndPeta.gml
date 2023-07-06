// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnBulletEyeAndPeta()
{
	if instance_exists(o_playerShip)
	{
		for (var i=0; i<1; i++)
		{
			if !instance_exists(o_enchufePETA)
			{
				enemy = choose(o_bulletEye,o_bulletEye,o_bulletEye,o_bulletEye,o_bulletEye,o_enchufePETA)
			}
			else
			{
				enemy = o_bulletEye;
			}
			enemies = instance_create_layer(x+random_range(-3,3), yprevious+random_range(-2,20), "Enemies", enemy)
			dire = point_direction(x, y, o_playerShip.x, o_playerShip.y);
			if instance_exists(enemies)
			{
				enemies.direction = dire+random_range(-5,5)
				enemies._hpush = lengthdir_x(3,dire)
				enemies._vpush = lengthdir_y(3,dire)
			}
		}
	}
}