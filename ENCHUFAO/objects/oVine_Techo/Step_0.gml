/// @description Insert description here
// You can write your code in this editor
/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups

	if alarm[3]<=0
	{
		if (x > __view_get( e__VW.XView, 0 )-150 && x < __view_get( e__VW.XView, 0 )+810)
		{
			if (y > __view_get( e__VW.YView, 0 )-150 && y < __view_get( e__VW.YView, 0 )+510)
			{
				if (!tile_meeting(x,y,"Tiles"))
				{
					instance_destroy();	
				}
				
					if (verletSystemExists(verletSystem1)) 
					{
					
							verletSystem1.simulate();
							//strenght = global.strWind_Vine;
							//dire = global.directWind_Vine
			
							//var forceFieldAmount = ds_list_size(verletSystem1.forceFields);
							//var currentForceField, currentVertex, dir, str,x1, y1, x2, y2;
			
							//for (var i = 0; i < forceFieldAmount; i++) 
							//{
							//	currentForceField = verletSystem1.forceFields[| i];
							//}
							//currentForceField.dir = dire;
							//currentForceField.str = strenght;
					
					}
			}
		}
		alarm[3] = 1;
	}

	//if (verletSystemExists(verletSystem1)) {
	// Pause the simulation
	//if (keyboard_check(vk_space)) {
	//	verletSystem1.active = false;
	//} else {
	//	verletSystem1.active = true;
	//}
	//}

	// Set the first vertexes position of the rope to the mouse position
	//rope1.vertexChangeData(first, mouse_x, mouse_y, ,);

// Delete a verlet group
//if (keyboard_check_pressed(ord("X"))) {
//	rope2.cleanup();
//	delete rope2;
//}

// Delete a verlet system
//if (keyboard_check_pressed(ord("C"))) {
//	verletSystem1.cleanup();
//	delete verletSystem1;
//}
