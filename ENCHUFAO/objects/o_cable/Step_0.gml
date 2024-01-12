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
	if (haveToUpdate = true)
	{
		rope1.vertexDeAttachTo(last);
		haveToUpdate = false;
		//rope1.vertexDeAttachTo(last);
	}
	global.unPlugging = false;
	enchufe = o_playerShip.enchufe
	if instance_exists(enchufe)
	{
		rope1.vertexDeAttachTo(last)
	}
	
}

if (global.plugging) && instance_exists(o_playerShip)
{
	instTope.depth = depth+1;
	global.plugging = false;
	enchufe = o_playerShip.enchufe;
	
	if instance_exists(enchufe)
	{
		if (enchufe.IsBoss)
		{
			haveToUpdate = true;
		}
		else
		{
			rope1.vertexAttachTo(last, enchufe);
		}
		
	}
}


if (haveToUpdate = true)
{
	//SetHUE();
	rope1.vertexDeAttachTo(last);
	rope1.vertexAttachTo(last, enchufe,-lengthdir_x(30,enchufe.image_angle),-lengthdir_y(30,enchufe.image_angle))
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

