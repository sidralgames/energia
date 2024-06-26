// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_StrandedState()
{
	if (connected)
	{
		myCharger._hpush = 0;
		myCharger._vpush = 0;
		path_end();
		speed = 0;
		_hpush = 0;
		_vpush = 0;
		vspeed = 0;
		hspeed = 0;
		state = STRANDEDSHIPSTATE.CONNECTEDSHIP;
	}
	
	if instance_exists(o_playerShip)
	{	
		if ((chargedInEnergy) && (chargedInHp) && (firstSetted == true))
		{
			if point_distance(x,y,o_playerShip.x, o_playerShip.y) > 70	
			{
					strandedSpeed = lerp(strandedSpeed,maxSpeed,0.05)
					//myPath = path_add();
					mp_grid_path(global.gridRoom1, myPath, x, y, o_playerShip.x,  o_playerShip.y, true);
					changedSpeed = false;
					StrandedShip_MoveIA();
			}
			else
			{
				if (changedSpeed = false)
				{
					changedSpeed = true;
					//_hpush = hspeed;
					//_vpush = vspeed;
					speed = 0;	
				}
				path_end();
				var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
				direction += sign(dsin(a - direction)) * (strtandedPrecision * global.relativeSpeed);
				_angle = direction;
				strandedSpeed = lerp(strandedSpeed,minSpeed,0.05)
				speed = strandedSpeed * min(1, global.relativeSpeed+0.2);
				
				if (!connected)
				{
					if (tile_meeting(x+hspeed,y,"Tiles"))
					{
					    hspeed = -hspeed*bnc;
					} 
	
					if (tile_meeting(x,y+vspeed,"Tiles"))
					{
					    vspeed = -vspeed*bnc;
					}
				}
				//_angle = point_direction(myCharger.x,  myCharger.y, x, y)
			}
		}
	}

	if ((chargedInAmmo) && (chargedInHp) && (firstSetted == true))
	{
		nearestEnemy = instance_nearest(x, y, o_enemyP);
			
		if instance_exists(nearestEnemy) && (nearestEnemy.isImmortal = false)
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