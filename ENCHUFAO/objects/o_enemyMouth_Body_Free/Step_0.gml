/// @description Update the simulation

CheckInScreen(200, 15);

if instance_exists(inst)
{
	x = inst.x;
	y = inst.y;
	
	if (inst.plugging)
	{
		fixing = false;
		inst.plugging = false;
		enchufe = inst.enchufe;
	
		if instance_exists(enchufe)
		{
			rope1.vertexAttachTo(last, enchufe);
			inst.plugged = true;
			contPlugBody = 50;
		}
	}

	if (inst.contPlugged>0) && (inst.contPlugged<=15) 
	{
		enchufe = inst.enchufe;
		
		if instance_exists(enchufe)
		{
			enchufe.occupied = false;
			rope1.vertexDeAttachTo(last);
			counting=true;
		}
	}
	
	if (counting)
	{
		countingN--;
		
		if (countingN<=0)
		{
			for (var i=1; i<=_segments; i++)
			{
				rope1.vertexAttachObject(i, instBody[i],vertexAttachmentType.both);
				instBody[i].hurts = false;
				instBody[i].contHurt = 20;
			}
			
			counting=false;
			countingN=countingNInitial;
		}
	}
}

if instance_exists(inst)
{
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

