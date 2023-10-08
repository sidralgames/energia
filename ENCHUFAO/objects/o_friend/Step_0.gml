/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip) && instance_exists(o_gridRoom)
{
	if point_distance(x,y,o_playerShip.x, o_playerShip.y) < 60 
	{
		if (alarm[0] <= 0)
		{
			diffX = choose(random_range(30, 10), -random_range(10, 30));
			diffY = choose(random_range(30, 10), -random_range(10, 30));
			strandedSpeed = random_range(1.75,2.5);
			precision = 4;
			alarm[0] = random_range(30, 50)
		}
	}
	else
	{
		if (alarm[0] <= 0)
		{
			diffX = random_range(20, -20);
			diffY = random_range(20, -20);
			precision =4;
			strandedSpeed = random_range(2,3.5);
			alarm[0] = random_range(30, 50)
		}
	}
	
	_speed = lerp(_speed, strandedSpeed, 0.05)
	speed = _speed * min(1, global.relativeSpeed+0.2);
	
		FriendIA();
	
	if (alarm[1] <=0)
	{
		part_particles_create(global.naveFriend_sys, x,y, global.naveFriend, 1);
		alarm[1] = 2;
	}
	
	if (alarm[2] <= 0)
	{	
		peta = choose(o_enchufePETA, o_enchufePETAAmmo, o_enchufePETAHP, o_enchufePETALaser,
		o_enchufePETA, o_enchufePETAAmmo, o_enchufePETAHP, o_enchufePETALaser,
		o_enchufePETAAll)
		
		propToCreate = choose(peta, o_PETApickUp, o_BombpickUp);
		
		if (odds = irandom(odds)) && !tile_meeting(x,y,"Tiles")
		{
			instance_create_layer(x,y, "Enchufes", propToCreate);
			
			if instance_exists(propToCreate)
			{
				if (propToCreate = peta)
				{
					propToCreate._hpush = hspeed/3;
					propToCreate._vpush = vspeed/3;
					propToCreate.fromFriend = true;
					propToCreate.scale = 0.8;
				}
				else
				{
					propToCreate.image_xscale = 0.8;
					propToCreate.image_yscale = 0.8;
				}
			}
		}
		
		alarm[2] = random_range(minTime, maxTime)
	}
}

