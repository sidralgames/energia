/// @description Insert description here
// You can write your code in this editor

CheckInScreen(50, 2);

CollisionTileDestroy();

blackHoleNear = instance_nearest(x,y,o_blackHole);

if (instance_exists(blackHoleNear)) && (point_distance(x,y, blackHoleNear.x, blackHoleNear.y) < 150)
{
	var a = point_direction(x,y, blackHoleNear.x, blackHoleNear.y);
	direction += sign(dsin(a - direction)) * (precisionHole * min(1, global.relativeSpeed+0.2));
}
	
speed = bulletSpeed * global.relativeSpeed;

