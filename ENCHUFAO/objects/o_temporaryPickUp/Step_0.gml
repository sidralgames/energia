/// @description Insert description here
// You can write your code in this editor
if (scale < 1)
{
	scale +=0.1;
}


_hpush = lerp(_hpush, 0, 0.01);
_vpush = lerp(_vpush, 0, 0.01);


Move();

image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;

//apply the shift

if instance_exists(o_playerShip)
{
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) < 30)
	{
		direction = point_direction(x,y, o_playerShip.x, o_playerShip.y)
		speed = 4;
	}

}