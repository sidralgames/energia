// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawPotentialConnection()
{
	if instance_exists(inEnchufe)
	{
		if (inEnchufe.IsEnchufeBoss) && (inEnchufe.isPluggable == true)
		{
			maxConectRad = maxConectRadBoss;
			minConectRad = minConectRadBoss;
			if (inEnchufe) && (!inEnchufe.enchufeActive)
			&& (inEnchufe.abierto) && (!inEnchufe.enchufeOvercharged)
			{
				if (radi > minConectRad)
				{
					radi-=0.75;
				}
				else
				{
					radi = maxConectRadBoss;
				}
				draw_set_color(c_white)
				draw_circle(inEnchufe.x-lengthdir_x(30,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(30,inEnchufe.image_angle), radi+0.5, true)
				draw_circle(inEnchufe.x-lengthdir_x(30,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(30,inEnchufe.image_angle), radi, true)
				draw_circle(inEnchufe.x-lengthdir_x(30,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(30,inEnchufe.image_angle), minConectRad, true)
				draw_circle(inEnchufe.x-lengthdir_x(30,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(30,inEnchufe.image_angle), minConectRad+0.3, true)
			}
			
		}
		else if (inEnchufe.IsEnchufeMP3CHILL)
		{
			maxConectRad = maxConectRadBoss;
			minConectRad = minConectRadBoss;
			if (inEnchufe) && (!inEnchufe.enchufeActive)
			&& (inEnchufe.abierto) && (!inEnchufe.enchufeOvercharged)
			{
				if (radi > minConectRad)
				{
					radi-=0.75;
				}
				else
				{
					radi = maxConectRadBoss;
				}
				draw_set_color(c_white)
				draw_circle(inEnchufe.x-lengthdir_x(105,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(105,inEnchufe.image_angle), radi+0.5, true)
				draw_circle(inEnchufe.x-lengthdir_x(105,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(105,inEnchufe.image_angle), radi, true)
				draw_circle(inEnchufe.x-lengthdir_x(105,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(105,inEnchufe.image_angle), minConectRad, true)
				draw_circle(inEnchufe.x-lengthdir_x(105,inEnchufe.image_angle), inEnchufe.y-lengthdir_y(105,inEnchufe.image_angle), minConectRad+0.3, true)
			}
			
		}
		else if (inEnchufe.IsEnchufeCapsule) && (inEnchufe.isPluggable == true)
		{
			if (inEnchufe.IsEnchufeCapsuleSuper)
			{
				maxConectRad = maxConectRadStandard+8;
				minConectRad = minConectRadStandard+8;
			
				if (inEnchufe) && (!inEnchufe.enchufeActive)
				&& (inEnchufe.abierto) && (!inEnchufe.enchufeOvercharged)
				{
					if (radi > minConectRad)
					{
						radi-=0.25;
					}
					else
					{
						radi = maxConectRad;
					}
					draw_set_color(c_white)
					draw_circle(inEnchufe.x+lengthdir_x(25,inEnchufe.image_angle-90), inEnchufe.y+lengthdir_y(25,inEnchufe.image_angle-90), radi+0.5, true)
					draw_circle(inEnchufe.x+lengthdir_x(25,inEnchufe.image_angle-90), inEnchufe.y+lengthdir_y(25,inEnchufe.image_angle-90), radi, true)
					draw_circle(inEnchufe.x+lengthdir_x(25,inEnchufe.image_angle-90), inEnchufe.y+lengthdir_y(25,inEnchufe.image_angle-90), minConectRad, true)
					draw_circle(inEnchufe.x+lengthdir_x(25,inEnchufe.image_angle-90), inEnchufe.y+lengthdir_y(25,inEnchufe.image_angle-90), minConectRad+0.3, true)
				}
			}
			else
			{
				maxConectRad = maxConectRadStandard-8;
				minConectRad = minConectRadStandard-8;
			
				if (inEnchufe) && (!inEnchufe.enchufeActive)
				&& (inEnchufe.abierto) && (!inEnchufe.enchufeOvercharged)
				{
					if (radi > minConectRad)
					{
						radi-=0.25;
					}
					else
					{
						radi = maxConectRad;
					}
					draw_set_color(c_white)
					draw_circle(inEnchufe.x-lengthdir_x(10,inEnchufe.image_angle+90), inEnchufe.y-lengthdir_y(10,inEnchufe.image_angle+90), radi+0.5, true)
					draw_circle(inEnchufe.x-lengthdir_x(10,inEnchufe.image_angle+90), inEnchufe.y-lengthdir_y(10,inEnchufe.image_angle+90), radi, true)
					draw_circle(inEnchufe.x-lengthdir_x(10,inEnchufe.image_angle+90), inEnchufe.y-lengthdir_y(10,inEnchufe.image_angle+90), minConectRad, true)
					draw_circle(inEnchufe.x-lengthdir_x(10,inEnchufe.image_angle+90), inEnchufe.y-lengthdir_y(10,inEnchufe.image_angle+90), minConectRad+0.3, true)
				}
			}
		}
		else if (inEnchufe.isPETA_F) && (inEnchufe.isPluggable == true)
		{
			maxConectRad = maxConectRadStandard-10;
			minConectRad = minConectRadStandard-10;
			
			if (inEnchufe) && (!inEnchufe.enchufeActive)
			&& (inEnchufe.abierto) && (!inEnchufe.enchufeOvercharged)
			{
				if (radi > minConectRad)
				{
					radi-=0.25;
				}
				else
				{
					radi = maxConectRad;
				}
				draw_set_color(c_white)
				draw_circle(inEnchufe.x, inEnchufe.y, radi+0.5, true)
				draw_circle(inEnchufe.x, inEnchufe.y, radi, true)
				draw_circle(inEnchufe.x, inEnchufe.y, minConectRad, true)
				draw_circle(inEnchufe.x, inEnchufe.y, minConectRad + 0.3, true)
			}
		}
		else if (inEnchufe.isPluggable == true)
		{
			maxConectRad = maxConectRadStandard;
			minConectRad = minConectRadStandard;
			
			if (inEnchufe) && (!inEnchufe.enchufeActive)
			&& (inEnchufe.abierto) && (!inEnchufe.enchufeOvercharged)
			{
				if (radi > minConectRad)
				{
					radi-=0.25;
				}
				else
				{
					radi = maxConectRad;
				}
				draw_set_color(c_white)
				draw_circle(inEnchufe.x, inEnchufe.y, radi+0.5, true)
				draw_circle(inEnchufe.x, inEnchufe.y, radi, true)
				draw_circle(inEnchufe.x, inEnchufe.y, minConectRad, true)
				draw_circle(inEnchufe.x, inEnchufe.y, minConectRad + 0.3, true)
			}
		}
	}

	if instance_exists(connectedToShip)
	{
		if (connectedToShip) && (!pluggedToStrandedShip)
		{
			if (radi > 12)
			{
				radi-=0.15;
			}
			else
			{
				radi = 16;
			}
	
			draw_set_color(c_white)
			draw_circle(connectedToShip.x, connectedToShip.y, radi+0.5, true)
			draw_circle(connectedToShip.x, connectedToShip.y, radi, true)
			draw_circle(connectedToShip.x, connectedToShip.y, 12, true)
			draw_circle(connectedToShip.x, connectedToShip.y, 12.3, true)
		}
	}

}