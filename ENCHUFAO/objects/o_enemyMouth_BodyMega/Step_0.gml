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
	x=inst.x;
	y=inst.y;
	
	//TESTING NO SIMULATE HASTA QUE NO VAYA A APARECER POR PANTALLA LA CABEZA
	CheckInScreen(200, 15);
	
	if (inScreen)
	{
		if (verletSystemExists(verletSystem1))
		{
			verletSystem1.simulate();
		}
	}
}
else
{
	instance_destroy();	
}

