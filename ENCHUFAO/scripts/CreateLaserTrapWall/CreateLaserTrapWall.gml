 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateLaserTrapWall()
{
	//----- VERTICAL ------//
	if (!collision_line(x,y,x,y-32, o_wall, false, true)) && (oddsLaserV = irandom(oddsLaserV))
	{
		for(var i = 0; i < max_length; i++)
		{
			var ly = yy + lengthdir_y(i, 90);
			if place_meeting(x,ly,o_wall)	
			{
				max_length=i;
				laserB = instance_create_layer(x,ly-16,"Laser",o_laser);
				laserB.image_yscale=-1;
				laserB.canShot = false;
				laserB.long = 0;
			}
		}
		if instance_exists(laserB)
		{
			laserA = instance_create_layer(x,y-16,"Laser",o_laser);
			laserA.canShot = true;
			laserA.long = max_length;
			laserA.face = 0;
		}
	}
	//-------- HORIZONTAL --------//
	if (!collision_line(x,y,x-32,y, o_wall, false, true)) && (oddsLaserH = irandom(oddsLaserH))
	{
		for(var i = 0; i < max_length; i++)
		{
			var lx = xxL + lengthdir_x(i, 180);
			if place_meeting(lx,y,o_wall)	
			{
				max_length=i;
				laserB = instance_create_layer(lx-16,y,"Laser",o_laser);
				//laserB.image_yscale=-1;
				laserB.image_angle = 270;
				laserB.canShot = false;
				laserB.long = 0;
			}
		}
		if instance_exists(laserB)
		{
			laserA = instance_create_layer(x-16,y,"Laser",o_laser);
			laserA.canShot = true;
			laserA.image_angle = 90;
			laserA.long = max_length;
			laserA.face = 1;
		}
	}
}