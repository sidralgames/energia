/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
CheckInScreen(50, 10);



if (checkOk = true)
{
	
	if (contCheck >= 0)
	{
		contCheck--
		if (!tile_meeting(x,y,"Tiles"))
		{
			instance_destroy();	
		}
	}
}
if (global.changingTiles) && (checkTile = false)
{
	checkTile = true;
	alarm[4] = 90;
}

if (alarm[4] > 0)
{
	if (!tile_meeting(x,y,"Tiles"))
	{
		instance_destroy();	
	}
}



if (alarm[3]<=0)
{
	if (inScreen)
	{
		checkOk = true;
		
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
	alarm[3] = 2;
}