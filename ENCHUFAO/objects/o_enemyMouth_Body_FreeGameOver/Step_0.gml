/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups

if instance_exists(inst) //&& instance_exists(instAchor)
{
	if (verletSystemExists(verletSystem1))
	{
		verletSystem1.simulate();
		
					
					//	dire += osc;
					//	if(dire >= max_)
					//	{
					//	    dire = max_;
					//	    osc *= -1;
					//	}
					//	else if(dire <= min_){
					//	    dire = min_;
					//	    osc *= -1;
					//	}
					
					//var forceFieldAmount = ds_list_size(verletSystem1.forceFields);
					//var currentForceField, currentVertex, dir, str,x1, y1, x2, y2;
			
					//for (var i = 0; i < forceFieldAmount; i++) 
					//{
					//	currentForceField = verletSystem1.forceFields[| i];

					//}
					//currentForceField.x1 = x-200;
					//currentForceField.y1 = y-30;
					//currentForceField.x2 = x+50;
					//currentForceField.y2 = y+130;
					//currentForceField.dir = dire;
	}
}
else
{
	instance_destroy(instAchor)
	instance_destroy();	
}

