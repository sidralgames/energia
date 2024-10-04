/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups

CheckInScreen(200, 15);
if instance_exists(inst)
	{
		
		rope1.vertexChangeData(first,inst.cableXPos,inst.cableYPos);
			
		
		
		if (inst.plugging)
		{
			fixing = false;
			inst.plugging = false;
			enchufe = inst.enchufe;
			inst.plugged = true;
			contPlugBody = 50;
		}
		
		if (inst.plugged)
		{
			if instance_exists(enchufe)
			{
				rope1.vertexChangeData(last,enchufe.x,enchufe.y);
			}

		if (inst.contPlugged>0) && (inst.contPlugged<=15) 
		{
			enchufe = inst.enchufe;
			if instance_exists(enchufe)
			{
				enchufe.occupied = false;
				
				counting=true;
			}
		}
	
		if (counting)
		{
			countingN--;
			
			if (countingN<=0)
			{
			
				counting=false;
				countingN=countingNInitial;
			}
		}
	}
	}


WormBodySimulate();


