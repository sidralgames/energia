// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function WormBodySimulate()
{
if instance_exists(inst)
{
	x = inst.x;
	y = inst.y;
	
	//TESTING NO SIMULATE HASTA QUE NO VAYA A APARECER POR PANTALLA LA CABEZA
	
	if (inScreen) || (alarm[2] <= 0)
	{
		if (alarm[1] <= 0)
		{
			if (verletSystemExists(verletSystem1))
			{
				verletSystem1.simulate();
			}
			
			alarm[1] = 1;
		}
	}
	
	if (alarm[2] <= 0)
	{
		alarm[2] = resetPositionTime;
	}
}
else
{
	instance_destroy(instAchor)
	instance_destroy();	
}
}