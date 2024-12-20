/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups




if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	
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
	
		
	if (verletSystemExists(verletSystem1))
		{
			verletSystem1.simulate();
		}

}



