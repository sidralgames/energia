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
			
			for (var i=1; i<=_segments; i++)
			{
				rope1.vertexAttachObject(i, instMetal[i],vertexAttachmentType.both);
			}

			rope1.vertexAttachObject(2, instEnchufe[0],vertexAttachmentType.both);
			rope1.vertexAttachObject(5, instEnchufe[1],vertexAttachmentType.both);
			rope1.vertexAttachObject(8, instEnchufe[2],vertexAttachmentType.both);
			rope1.vertexAttachObject(11, instEnchufe[3],vertexAttachmentType.both);
			
			counting=false;
			countingN=countingNInitial;
		}
	}
	
}
if (global.BossWormHP > 0) //&& instance_exists(instAchor)
{
	if (verletSystemExists(verletSystem1))
	{
		verletSystem1.simulate();
	}
}
else
{
	instance_destroy(instAchor)
	instance_destroy();	
}

