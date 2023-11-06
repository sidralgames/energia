/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	if (verletSystemExists(verletSystem1))
		{
			verletSystem1.simulate();
		}

}



