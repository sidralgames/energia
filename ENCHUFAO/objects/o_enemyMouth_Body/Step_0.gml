/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;

}

inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)


if (inScreen)
{
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
}

