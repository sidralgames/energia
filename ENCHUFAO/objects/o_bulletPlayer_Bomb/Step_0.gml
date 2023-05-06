/// @description Insert description here
// You can write your code in this editor

placeMeeting_TileBounceBullet();

if instance_exists(lightBullet)
{
	lightBullet.light [| eLight.X] = x
	lightBullet.light [| eLight.Y] = y
	lightBullet.light [| eLight.Direction] = direction-90
}


_hpush = lerp(_hpush, 0, 0.05);
_vpush = lerp(_vpush, 0, 0.05);

image_angle += 5*(_hpush);


if (alarm[0] <=0) && (abs(_hpush) <= 0.005 && abs(_vpush) <= 0.005)
{
instance_destroy();	
}