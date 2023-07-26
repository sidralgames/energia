/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;

}

if (global.plugging)
{
	global.plugging = false;
	enchufe = instance_nearest(x,y,o_enchufe_Father);
	
	if instance_exists(enchufe)
	{

		rope1.vertexAttachTo(last, enchufe);
	}
}

if (global.unPlugging)
{

	global.unPlugging = false;
	enchufe = instance_nearest(x,y,o_enchufe_Father);
	if instance_exists(enchufe)
	{
		rope1.vertexDeAttachTo(last)
	}
	
}



if (global.pluggingShip)
{
	global.pluggingShip = false;
	ship = instance_nearest(x,y,o_chargerStrandedShip);
	
	if instance_exists(ship)
	{

		rope1.vertexAttachTo(last, ship);
	}
}

if (global.unPluggingShip)
{

	global.unPluggingShip = false;
	ship = instance_nearest(x,y,o_chargerStrandedShip);
	if instance_exists(ship)
	{
		rope1.vertexDeAttachTo(last)
	}
	
}


if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}

