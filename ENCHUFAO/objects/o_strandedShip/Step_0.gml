/// @description Insert description here
// You can write your code in this editor



	myCable = instance_nearest(x,y,o_cableStrandedShip);
	myCableFake = instance_nearest(x,y,o_cableStrandedShipFake);
	
	

	
switch(state)
{
	case STRANDEDSHIPSTATE.STRANDED: StrandedShip_StrandedState(); break;	
	case STRANDEDSHIPSTATE.CONNECTEDSHIP: StrandedShip_ConnectedShip(); break;	
	case STRANDEDSHIPSTATE.CONNECTEDSHIPCHARGED: StrandedShip_ConnectedShipCharged(); break;	
	case STRANDEDSHIPSTATE.CONNECTEDENCHUFE: StrandedShip_ConnectedEnchufe(); break;	
}

MoveZeroGrv();


if (chargedInEnergy == false) 
{
	_angle += max(0.5*sign(_hpush), 2*(abs(_hpush)),0.5*sign(_vpush), 2*(abs(_vpush)));
}
else
{
	part_particles_create(global.naveP_sys, x, y, global.naveP , 5)
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
		
	CheckShipToUnlock()

	//-----------------MOVE IT TO NEXT ROOM----------------------//
	if (sprite = splayer)
	{
		global.strandedShipGreen = true;
	}
	else if (sprite = splayer_Blue)
	{
		global.strandedShipBlue = true;
	}
	else if (sprite = splayer_Dark)
	{
		global.strandedShipDark = true;
	}
	else if (sprite = splayer_Red)
	{
		global.strandedShipRed = true;
	}
	else if (sprite = splayer_Purple)
	{
		global.strandedShipPurple = true;
	}
	
	goesToNextRoom = true;
}