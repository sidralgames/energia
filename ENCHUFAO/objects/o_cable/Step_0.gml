/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;

}

if (contUnplugging > 0)
{
	contUnplugging --;
	instTope.depth = depth-1;
	
	if (haveToUpdate = true)
	{
		haveToUpdate = false;
	}
	else if (haveToUpdateCapsule = true)
	{
		haveToUpdateCapsule = false;
	}
	else if (haveToUpdateCapsuleSuper = true)
	{
		haveToUpdateCapsuleSuper = false;
	}
	
	rope1.vertexDeAttachTo(last);
}

if (global.plugging) || (contUnplugging > 0)
{
	if !ds_map_empty(chipList)
	{
		for (var i=0; i<ds_map_size(chipList); i++)
		{
			chip = ds_map_find_value(chipList, i)
	
			rope1.vertexAttachObject(chip.vert, chip.obj, vertexAttachmentType.both);
		}
	}
}

if (chipJustGrabbed)
{
	if !ds_map_empty(chipList)
	{
		for (var i=0; i<ds_map_size(chipList); i++)
		{
			chip = ds_map_find_value(chipList, i)
	
			rope1.vertexAttachObject(chip.vert, chip.obj, vertexAttachmentType.both);
		}
	}
	
	chipJustGrabbed = false;
}



if (global.unPlugging)
{
	contUnplugging = 20;
	
	global.unPlugging = false;

}


if (global.plugging) && instance_exists(o_playerShip)
{
	instTope.depth = depth+1;
	global.plugging = false;
	enchufe = o_playerShip.enchufe;
	
	if instance_exists(enchufe)
	{
		if (enchufe.IsEnchufeBoss) 
		{
			haveToUpdate = true;
		}
		else if (enchufe.IsEnchufeCapsule)
		{
			if (enchufe.IsEnchufeCapsuleSuper)
			{
				haveToUpdateCapsuleSuper = true;
			}
			else
			{
				haveToUpdateCapsule = true;
			}
		}
		else
		{
			rope1.vertexAttachTo(last, enchufe);
		}
		
	}
}

if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged)
	{
		if (instance_exists(enchufe))
		{
			if (haveToUpdate = true)
			{
				rope1.vertexChangeData(last,enchufe.x-lengthdir_x(30,enchufe.image_angle),enchufe.y-lengthdir_y(30,enchufe.image_angle))
			}
			if (haveToUpdateCapsule = true)
			{
				rope1.vertexChangeData(last,enchufe.x+lengthdir_x(10,enchufe.image_angle-90),enchufe.y+lengthdir_y(10,enchufe.image_angle-90))
			}
			if (haveToUpdateCapsuleSuper = true)
			{
				rope1.vertexChangeData(last,enchufe.x+lengthdir_x(25,enchufe.image_angle-90),enchufe.y+lengthdir_y(25,enchufe.image_angle-90))
			}
		}
	}
}



if (global.pluggingShip)
{
	global.pluggingShip = false;
	chargerStrandedShip = instance_nearest(x,y,o_chargerStrandedShip);
	
	if instance_exists(chargerStrandedShip)
	{
		
		rope1.vertexAttachTo(last, chargerStrandedShip);
	}
}

if (global.unPluggingShip)
{

	global.unPluggingShip = false;
	chargerStrandedShip = instance_nearest(x,y,o_chargerStrandedShip);
	if instance_exists(chargerStrandedShip)
	{
		rope1.vertexDeAttachTo(last)
	}
	
}


if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}

