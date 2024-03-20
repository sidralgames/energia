/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst) //&& instance_exists(instAchor)
{
	x=inst.x;
	y=inst.y;
	rope1.vertexChangeData(first, inst.x,inst.y,,false);
	
	if (verletSystemExists(verletSystem1))
	{
		verletSystem1.simulate();
	}
}
else
{
	instance_destroy(instAchor)
	instance_destroy();	
}

