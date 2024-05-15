/// @description Update the simulation

if instance_exists(inst) && instance_exists(instAchor)
{
	x = inst.x;
	y = inst.y;
	
	//TESTING NO SIMULATE HASTA QUE NO VAYA A APARECER POR PANTALLA LA CABEZA
	if instance_exists(o_playerShip)
	{
		inScreen = (point_distance(x, y, o_playerShip.x, o_playerShip.y) < global.offRangeDistance_Vines);
	}
	
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