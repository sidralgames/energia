/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;

}
if instance_exists(inst) && instance_exists(instAchor)
{
	if (verletSystemExists(verletSystem1))
	{
		verletSystem1.simulate();
	}
}
else
{
	instance_destroy();	
}

