/// @description Insert description here
// You can write your code in this editor
/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups

	if alarm[3]<=0
	{
		if (global.inScreen)
		{
			if (!tile_meeting(x,y,"Tiles"))
			{
				instance_destroy();	
			}
			
			collision = instance_nearest(x,y,parCollision);
			if instance_exists(collision)
			{
				if (point_distance(x,y,collision.x, collision.y) < 200)
				{
					if (verletSystemExists(verletSystem1)) 
					{
						if instance_exists(collision)
						{
							verletSystem1.simulate();
						}
					}
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
