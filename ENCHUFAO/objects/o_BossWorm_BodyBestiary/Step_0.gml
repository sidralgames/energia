/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups




if instance_exists(inst)
{
	if (verletSystemExists(verletSystem1))
	{
		verletSystem1.simulate();
	}

}
else
{
	if instance_exists(instAchor)
	{
		instance_destroy(instAchor)
	}
	instance_destroy();	
}
