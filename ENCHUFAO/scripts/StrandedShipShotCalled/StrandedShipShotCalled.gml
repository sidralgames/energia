// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShipShotCalled()
{
	nearestEnemy = instance_nearest(x, y, o_enemyP);
			
	if instance_exists(nearestEnemy)
	{
		if (point_distance(x, y, nearestEnemy.x, nearestEnemy.y) < 150)
		{
			_angle = point_direction(x,y,nearestEnemy.x, nearestEnemy.y)
			if (alarm[1] <= 0)
			{
				StrandedShipShoot();
			}
		}
		else
		{
			_angle = direction;
		}
	}
}