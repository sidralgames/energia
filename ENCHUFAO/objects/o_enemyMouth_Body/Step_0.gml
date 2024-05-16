/// @description Update the simulation

if instance_exists(inst) && instance_exists(instAchor)
{
	x = inst.x;
	y = inst.y;
	
	//TESTING NO SIMULATE HASTA QUE NO VAYA A APARECER POR PANTALLA LA CABEZA
	CheckInScreen(200, 15);
	
	if (inScreen) || instance_exists(o_menuScores)
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