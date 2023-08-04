// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_StrandedState()
{
	if (connected)
	{
		myCharger._hpush=0;
		myCharger._vpush = 0;
		state = STRANDEDSHIPSTATE.CONNECTEDSHIP;
	}
	
	if instance_exists(o_playerShip)
	{	
		if (chargedInEnergy) && (chargedInHp)
		{
			if point_distance(x,y,o_playerShip.x, o_playerShip.y) > 10	
			{
				myPath = path_add();
				mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x,  o_playerShip.y, true);
				changedSpeed = false;
				StrandedShip_MoveIA();
			}
			else
			{
				path_end();
				if (changedSpeed = false)
				{
					changedSpeed = true;
					_hpush = hspeed;
					_vpush = vspeed;
					speed = 0;	
				}
				_angle = point_direction(myCharger.x,  myCharger.y, x, y)
			}
		}
	}

	if (chargedInAmmo) && (chargedInHp)
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
		}
	}
}