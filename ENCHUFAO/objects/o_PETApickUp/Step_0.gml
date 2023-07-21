/// @description Insert description here
// You can write your code in this editor


t = (t + increment) mod 360;
shift = amplitude * dsin(t);


//apply the shift

if instance_exists(o_playerShip)
{
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) < 30)
	{
		direction = point_direction(x,y, o_playerShip.x, o_playerShip.y)
		speed = 3;
	}
	else
	{
		x = xx + lengthdir_x(shift, direction +dir1);
		y = yy + lengthdir_y(shift, direction + dir1);	
	}
}