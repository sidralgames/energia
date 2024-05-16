/// @description Update the simulation

CheckInScreen(200, 15);

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

WormBodySimulate();
