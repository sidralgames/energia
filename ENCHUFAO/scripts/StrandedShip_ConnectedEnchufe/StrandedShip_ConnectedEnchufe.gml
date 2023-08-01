// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_ConnectedEnchufe()
{
	
	DoCablePhysics();
	
	_hpush = lerp(_hpush, 0, 0.005);
	_vpush = lerp(_vpush, 0, 0.005);
		
	if (alarm[0] <=0) && (!unlocked)
	{
		part_particles_create(global.repairingPart_sys, x+random_range(-15,15), y+random_range(-15,15), global.repairingPart , 1)	
		alarm[0] = 3;
	}
		

	
	
	//-----Enchufe Movement---------//

	if (chargedInEnergy) && (chargedInHp)
	{
		if (alarm[2] <=0)
		{
			alarm[2] = random_range(300,700);
			direction = irandom(360);
			_angle = direction;
			waitingSpeed = random_range(1,1.5);
			breakDistance = random_range(0.005, 0.05);
			accelDistance = random_range(0.005, 0.05);
		}
	
		if (alarm[2] >= 200) 
		{
			speed = lerp(speed, waitingSpeed, accelDistance) * global.relativeSpeed;
		}
		else
		{
			speed = lerp(speed, 0, breakDistance) * global.relativeSpeed;
		}
		if (point_distance(myCharger.x, myCharger.y, x, y) > maxDistance)
		{
			direction = (direction + 180) mod 360;
			_angle = direction;
		}
	
		if tile_meeting(x+lengthdir_x(5,direction), y+lengthdir_y(5,direction), "Tiles")
		{
			direction = (direction + random_range(140,220)) mod 360
			_angle = direction
			alarm[2] = random_range(50,60);
		}
	}
	else
	{
		_angle += max(0.5*sign(_hpush), 2*(abs(_hpush)),0.5*sign(_vpush), 2*(abs(_vpush)));

	}
	
	
	//-----------SHOOTING CONNECTED TO ENCHUFE-------//
	if (chargedInAmmo) && (chargedInHp)
	{
		nearestEnemy = instance_nearest(x, y, o_enemyP);
		if instance_exists(nearestEnemy)
		{
			if (point_distance(x, y, nearestEnemy.x, nearestEnemy.y) < 250)
			{
				_angle = point_direction(x,y,nearestEnemy.x, nearestEnemy.y)
			}
			else
			{
				_angle = direction
			}
		}
		else
		{
			_angle = direction
		}
		
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
	
	
	if (connected)
	{
		if (!chargedInAmmo) && (!chargedInHp) && (!chargedInEnergy)
		{
			state = STRANDEDSHIPSTATE.CONNECTEDSHIP;
		}
		else
		{
			state = STRANDEDSHIPSTATE.CONNECTEDSHIPCHARGED;
		}
	}
}