/// @description Insert description here
// You can write your code in this editor
speed = _speed * global.relativeSpeed;

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()	
}

if instance_exists(o_playerShip)
{
	if x > __view_get( e__VW.XView, 0 )-150 && x < __view_get( e__VW.XView, 0 )+790
	{
		if y > __view_get( e__VW.YView, 0 )-150 && y < __view_get( e__VW.YView, 0 )+510
		{
			if (alarm[1] <=2)
			{
				part_particles_create(global.misil_sys, x-lengthdir_x(6,direction), y-lengthdir_y(6,direction), global.misil , 1)
			}
			if (alarm[1]<=0)
			{
				alarm[1] = 5;
			}
			
			if (alarm[2] <=0)
			{
				xDiff = random_range(-20,20);
				yDiff = random_range(-20,20);
				
				alarm[2] = random_range(30,60);
			}
			var a = point_direction(x, y, o_playerShip.x+xDiff, o_playerShip.y+yDiff);
			direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
			image_angle = direction-90;
		}
	}
}
else
{
	instance_destroy();
}

vida--;

if (vida <=10)
{
	image_xscale+=0.03;
	image_yscale+=0.03;
}
if (vida<=0)
{
	instance_destroy();	
}







