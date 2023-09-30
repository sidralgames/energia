// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnBulletEyeAndPeta()
{
	if instance_exists(o_playerShip)
	{
		for (var i=0; i<1; i++)
		{
			peta =  choose(o_enchufePETA,o_enchufePETAAll,o_enchufePETALaser,o_enchufePETAAmmo,o_enchufePETAHP)
			if !instance_exists(peta)
			{
				enemy = choose(o_bulletEye,o_bulletEye,o_bulletEye,o_bulletEye,o_bulletEye,peta)
			}
			else
			{
				enemy = o_bulletEye;
			}
			if (enemy != o_bulletEye)
			{
				layerID = "Enchufes";
			}
			else
			{
				layerID = "Enemies";
			}
			enemies = instance_create_layer(x+random_range(-3,3), yprevious+random_range(-2,20), layerID, enemy)
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