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
			sprite = ship.sprite
		}
		sprite = ship.sprite
		
	}

	if (sprite = splayer)
	{
		strandedShipCableStat = 3;
		strtandedPrecision = 2;
		weight = 1;
		minSpeed = 1.5;
		maxSpeed = 2.5;
		hpMax = 4;
		hp = global.strandedShipGreenHP;
		standedShipfireRate = 25;
	
	}
	else if (sprite = splayer_Blue)
	{
		strandedShipCableStat = 1.5;
		strtandedPrecision = 2.75;
		weight = 1;
		minSpeed = 1.5;
		maxSpeed = 3;
		hpMax = 4;
		hp = global.strandedShipBlueHP;
		standedShipfireRate = 20;
	}
	else if (sprite = splayer_Dark)
	{
		strandedShipCableStat = 2.5;	
		strtandedPrecision = 2;
		weight = 1;
		minSpeed = 1.5;
		maxSpeed = 2.75;
		hpMax = 4;
		hp = global.strandedShipDarkHP;
		standedShipfireRate = 25;
	}
	else if (sprite = splayer_Red)
	{
		strandedShipCableStat = 3.5;
		strtandedPrecision = 2;
		weight = 0.5;
		minSpeed = 1.5;
		maxSpeed = 2;
		hpMax = 4;
		hp = global.strandedShipRedHP;
		standedShipfireRate = 25;

	}
	else if (sprite = splayer_Purple)
	{
		strandedShipCableStat = 2.5;
		strtandedPrecision = 2;
		weight = 1;
		minSpeed = 1.5;
		maxSpeed = 2.75;
		hpMax = 4;
		hp = global.strandedShipPurpleHP;
		standedShipfireRate = 20;
	}
	else if (sprite = splayer_mp3)
	{
		strandedShipCableStat = 2.5;
		strtandedPrecision = 2;
		weight = 1;
		minSpeed = 1.5;
		maxSpeed = 2.75;
		hpMax = 4;
		hp = global.strandedShipMP3HP;
		standedShipfireRate = 25;
	}

	sprite_index = sprite;
	maxDistance = strandedShipCableStat *35;
	cable = instance_create_layer(x,y,"Cable", o_cableStrandedShip);
	set = true;
}