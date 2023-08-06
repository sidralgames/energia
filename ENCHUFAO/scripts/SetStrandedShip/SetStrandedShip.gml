// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetStrandedShip()
{
	if (createdStranded)
	{
		ship = ds_map_find_value(global.shipList, irandom(global.numberOfShips-1))
		otherShip = o_strandedShip;
		while (ship.sprite = global.spriteShip) || ((otherShip.createdStranded == false) && (ship.sprite = otherShip.sprite))
		{
			ship = ds_map_find_value(global.shipList, irandom(global.numberOfShips-1))
		}
		sprite = ship.sprite
	}

	if (sprite = splayer)
	{
		strandedShipCableStat = 3.5;
		strtandedPrecision = 2;
		weight = 1;
		minSpeed = 1.5;
		maxSpeed = 2.5;
		hpMax = 4;
		hp = hpMax;
	
	}
	else if (sprite = splayer_Blue)
	{
		strandedShipCableStat = 2;
		strtandedPrecision = 2.75;
		weight = 1;
		minSpeed = 1.95;
		maxSpeed = 3.25;
		hpMax = 3;
		hp = hpMax;
	}
	else if (sprite = splayer_Dark)
	{
		strandedShipCableStat = 3;	
		strtandedPrecision = 2;
		weight = 1;
		minSpeed = 1.75;
		maxSpeed = 2.75;
		hpMax = 3;
		hp = hpMax;
	}
	else if (sprite = splayer_Red)
	{
		strandedShipCableStat = 4;
		strtandedPrecision = 2;
		weight = 0.5;
		minSpeed = 1.5;
		maxSpeed = 2;
		hpMax = 5;
		hp = hpMax;
	}
	else if (sprite = splayer_Purple)
	{
		strandedShipCableStat = 3;
		strtandedPrecision = 2;
		weight = 1;
		minSpeed = 1.75;
		maxSpeed = 2.75;
		hpMax = 4;
		hp = hpMax;
	}

	sprite_index = sprite;
	maxDistance = strandedShipCableStat *35;
	cable = instance_create_layer(x,y,"Cable", o_cableStrandedShip);
	set = true;
}