/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups
if instance_exists(inst)
{
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
			for (var i=2; i<=_segments-1; i++)
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
if instance_exists(inst) //&& instance_exists(instAchor)
{
	//TESTING NO SIMULATE HASTA QUE NO VAYA A APARECER POR PANTALLA LA CABEZA
	inScreen =  (inst.x > __view_get( e__VW.XView, 0 )-250 && inst.x < __view_get( e__VW.XView, 0 )+910) &&
	(inst.y > __view_get( e__VW.YView, 0 )-250 && inst.y < __view_get( e__VW.YView, 0 )+610)
	
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
	instance_destroy(instAchor)
	instance_destroy();	
}

