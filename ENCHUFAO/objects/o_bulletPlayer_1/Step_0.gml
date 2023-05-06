/// @description Insert description here
// You can write your code in this editor

placeMeeting_TileBounceBullet();

if instance_exists(lightBullet)
{
	lightBullet.light [| eLight.X] = x
	lightBullet.light [| eLight.Y] = y
	lightBullet.light [| eLight.Direction] = direction-90
}


_hpush = lerp(_hpush, 0, 0.005);
_vpush = lerp(_vpush, 0, 0.005);

if (bounces >=1)
{
	image_alpha-=0.05;
	
	if (image_alpha <= 0)
	{
		if instance_exists(lightBullet)
		{
			instance_destroy(lightBullet)
		}
		instance_destroy();	
	}
}