/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (image_index > 2) && (image_index < 6)
{
	if collision_rectangle(x-10, y+5, x+10, y+32, o_enemyP, false, true)
	{
		other._hp = 0;
	}
	else
	{
		if (repelledEnemy = false)
		{
			repelledEnemy = true;
			alarm[4] = 30;
			
			if (other.isShield == false)
			{
				with(other)
				{
					if (!shocked)
					{
						path_end();
						shocked = true;
	
						alarm[9] = random_range(20,30);
						dirShoked = direction-180
	
						speed = -speed
			
						direction = dirShoked;
	
						state = ENEMYSTATE.SHOCKED;
						takeCover = false;
					}
				}
			}
		}
	}
}
else
{
	if (repelledEnemy = false)
	{
		repelledEnemy = true;
		alarm[4] = 30;
			
		if (other.isShield == false)
		{
			with(other)
			{
				if (!shocked)
				{
					path_end();
					shocked = true;
	
					alarm[9] = random_range(20,30);
					dirShoked = direction-180;
	
					speed = -speed
			
					direction = dirShoked;
	
					state = ENEMYSTATE.SHOCKED;
					takeCover = false;
				}
			}
		}
		}
}




