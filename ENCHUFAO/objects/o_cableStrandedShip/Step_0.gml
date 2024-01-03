/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups




if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;

}

if (global.pluggingStrandedShipToEnchufe)
{
	global.pluggingStrandedShipToEnchufe = false;
	enchufe = instance_nearest(x,y,o_enchufe_Father);
	
	if instance_exists(enchufe)
	{

		rope1.vertexAttachTo(last, enchufe);
	}
}

if instance_exists(instTope)
{
	if (verletSystemExists(verletSystem1))
	{
		verletSystem1.simulate();
	}
}
