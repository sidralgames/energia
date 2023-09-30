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






