// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_ConnectedShipCharged()
{
	
	if (chargedInEnergy) && (chargedInHp)
	{
		if instance_exists(o_playerShip)
		{	
			StrandedShip_MoveIA()
		}
	}
	
	
	DoCablePhysics();
	
	//---------SHOOT CONNECTED TO SHIP WHEN FULL CHARGED----------//
	nearestEnemy = instance_nearest(x, y, o_enemyP);
	if instance_exists(nearestEnemy)
	{
		if (point_distance(x, y, nearestEnemy.x, nearestEnemy.y) < 250)
		{
			_angle = point_direction(x,y,nearestEnemy.x, nearestEnemy.y)
		}
		else
		{
			_angle = point_direction(myCharger.x,  myCharger.y, x, y)
		}
	}
	else
	{
		_angle = point_direction(myCharger.x,  myCharger.y, x, y)
	}
	
	if (chargedInHp) && (chargedInAmmo)
	{
		if instance_exists(nearestEnemy)
		{
			if (point_distance(x, y, nearestEnemy.x, nearestEnemy.y) < 200)
			{
				if (alarm[1] <= 0)
				{
					StrandedShipShoot();
				}
			}
		}
	}
	
	//----- GO TO CONNECTED ENCHUFE STATE----//
	if (connectedToEnchufe)
	{
		state = STRANDEDSHIPSTATE.CONNECTEDENCHUFE;
	}
}