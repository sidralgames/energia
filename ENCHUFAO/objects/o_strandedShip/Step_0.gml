/// @description Insert description here
// You can write your code in this editor
shipReady = (chargedInAmmo) && (chargedInEnergy) && (chargedInHp)
depth = layer_get_depth("Player")+1;
if (called)
{
	StrandedShipIsCalled()
}
else
{
	if (set == false)
	{
		SetStrandedShip();
	}

	myCable = cable;
	myCableFake = cableFake;

	MoveZeroGrv();

	switch(state)
	{
		case STRANDEDSHIPSTATE.STRANDED: StrandedShip_StrandedState(); break;	
		case STRANDEDSHIPSTATE.CONNECTEDSHIP: StrandedShip_ConnectedShip(); break;	
		case STRANDEDSHIPSTATE.CONNECTEDSHIPCHARGED: StrandedShip_ConnectedShipCharged(); break;	
		case STRANDEDSHIPSTATE.CONNECTEDENCHUFE: StrandedShip_ConnectedEnchufe(); break;	
	}




	if (!chargedInEnergy) || (!chargedInHp)
	{
		_angle += max(0.5*sign(_hpush), 2*(abs(_hpush)),0.5*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
	}
	else
	{
		part_particles_create(global.naveP_sys, x,y, global.naveP, 1);
	}


	if (alarm[4] <= 0)
	{
	
		diffX = choose(random_range(-50,-100),random_range(50,100));
		diffY = choose(random_range(-50,-100),random_range(50,100));
		alarm[4] = random_range(30, 60)
	}

	if (alarm[6] <= 0)
	{
		strandedSpeed = random_range(minSpeed,maxSpeed)	
		alarm[6] = random_range(120,400)
	}

	if (chargedInEnergy) && (chargedInHp) && (chargedInAmmo) && (goesToNextRoom = false)
	{
		//-------------------UNLOCK SHIP--------------------//
		for (var i = 0; i < global.numberOfShips; i++)
		{
			shipToUnlock = ds_map_find_value(global.shipList,i);
			if (shipToUnlock.sprite == sprite)
			{
				if (shipToUnlock.unlocked = 0)
				{
					shipToUnlock.unlocked = 1;
					o_main.alarm[2] = 60; //----UNLOCKED SHIP BANNER
				}
			}
		}
		
		CheckShipToUnlock();
		//global.posNumberOfShips-=1;
		//ds_map_delete(global.posNumberOfShips, numShip)
		goesToNextRoom = true;
	}

	if instance_exists(o_playerShip)
	{
		if (o_playerShip.pluggedFinal = true) && (getFinalHP = false) && (goesToNextRoom = true)
		{
			GetStrandedShipHP();
			getFinalHP = true;
		}
		
	}
	
	if (hp <= 0) && (goesToNextRoom = true)
	{
		shipReady = false;
		chargedInAmmo = false;
		chargedInEnergy = false;
		chargedInHp = false;
		state = STRANDEDSHIPSTATE.STRANDED;
		StrandedShip_False();
	
		instance_create_layer(x,y,"Shield", o_exploBomb);
		goesToNextRoom = false;
		chargeAmmo = 0;
		chargeEnergy = 0;
		chargeHp = 0;

		path_end();
		hp = hpMax;
		_hpush = hspeed;
		_vpush = vspeed;
		speed = 0;
	
	}
}