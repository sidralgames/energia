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
	instance_destroy();
	instance_destroy(o_charger)
	cable = instance_create_layer(o_playerShip.x, o_playerShip.y, "Cable", o_cable)
	o_playerShip.createdFromUnplugged = true;
}

if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}


