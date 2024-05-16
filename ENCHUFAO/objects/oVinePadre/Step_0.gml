/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
CheckInScreen(50, 20);

if (alarm[3]<=0)
{
	if (inScreen)
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