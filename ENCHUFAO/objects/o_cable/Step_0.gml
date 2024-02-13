/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;

}

if (global.unPlugging)
{
	instTope.depth = depth-1;
	
	if (standardConnection = true)
	{
		standardConnection = false;
	}
	if (bossWormConnection = true)
	{
		bossWormConnection = false;
	}
	if (capsuleConnection = true)
	{
		capsuleConnection = false;
	}
	if (superCapsuleConnection = true)
	{
		superCapsuleConnection = false;
	}
	global.unPlugging = false;
}

//if !ds_map_empty(chipList)
//{
//	if (global.plugging) || (alarm[2] < 0)
//	{
//		for (var i=0; i<ds_map_size(chipList); i++)
//		{
//			chip = ds_map_find_value(chipList, i);
			
//			rope1.vertexDeAttachObject(chip.vert);
			
//			rope1.vertexAttachObject(chip.vert, chip.obj, vertexAttachmentType.both);
//		}
//	}
//}

//if (alarm[2] <= 0)
//{
//	alarm[2] = 3;
//}

//if (chipJustGrabbed)
//{
//	if !ds_map_empty(chipList)
//	{
//		for (var i=0; i<ds_map_size(chipList); i++)
//		{
//			chip = ds_map_find_value(chipList, i);
			
//			rope1.vertexDeAttachObject(chip.vert);
			
//			rope1.vertexAttachObject(chip.vert, chip.obj, vertexAttachmentType.both);
//		}
//	}
	
//	chipJustGrabbed = false;
//}





if (global.plugging) && instance_exists(o_playerShip)
{
	instTope.depth = depth+1;
	enchufe = o_playerShip.enchufe;
	
	if instance_exists(enchufe)
	{
		if (enchufe.IsEnchufeBoss) 
		{
			bossWormConnection = true;
		}
		else if (enchufe.IsEnchufeCapsule)
		{
			if (enchufe.IsEnchufeCapsuleSuper)
			{
				superCapsuleConnection = true;
			}
			else
			{
				capsuleConnection = true;
			}
		}
		else
		{
			standardConnection = true;
		}
	}
	
	global.plugging = false;
}

if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged)
	{
		if (instance_exists(enchufe))
		{
			if (bossWormConnection = true)
			{
				rope1.vertexChangeData(last,enchufe.x-lengthdir_x(30,enchufe.image_angle),enchufe.y-lengthdir_y(30,enchufe.image_angle))
			}
			if (capsuleConnection = true)
			{
				rope1.vertexChangeData(last,enchufe.x+lengthdir_x(10,enchufe.image_angle-90),enchufe.y+lengthdir_y(10,enchufe.image_angle-90))
			}
			if (superCapsuleConnection = true)
			{
				rope1.vertexChangeData(last,enchufe.x+lengthdir_x(25,enchufe.image_angle-90),enchufe.y+lengthdir_y(25,enchufe.image_angle-90))
			}
			if (standardConnection = true)
			{
				rope1.vertexChangeData(last,enchufe.x,enchufe.y)
			}
		}
	}
}




if (global.pluggingShip)
{
	global.pluggingShip = false;
	
	chargerStrandedShip = instance_nearest(o_playerShip.x,o_playerShip.y,o_chargerStrandedShip);
	
	if instance_exists(chargerStrandedShip)
	{
		strandedShipConnection = true;
	}
}

if (global.unPluggingShip)
{
	global.unPluggingShip = false;
	strandedShipConnection = false;
}


if (strandedShipConnection = true)
{
	rope1.vertexChangeData(last,chargerStrandedShip.x,chargerStrandedShip.y)
}

if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}

