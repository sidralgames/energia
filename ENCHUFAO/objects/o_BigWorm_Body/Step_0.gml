/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups

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
	if (inScreen)
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
}
else
{
	instance_destroy(instAchor)
	instance_destroy();	
}

