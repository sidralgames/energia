/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	x = o_playerShip.x;
	y = o_playerShip.y;
}

if (round(global.shields<=0))
{
	o_playerShip.shieldCreated = false;
	instance_destroy();
}

if (global.shields = 1)
{
	image_alpha = 0.4;
}
else if (global.shields = 2)
{
	image_alpha = 0.65;
}
else if (global.shields >= 3)
{
	image_alpha = 1;
}



