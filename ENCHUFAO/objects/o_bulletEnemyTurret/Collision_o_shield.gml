/// @description Insert description here
// You can write your code in this editor
instance_destroy();
if (global.shields > 0)
{
global.shields-=1;
gamepad_set_vibration(0,0.1,0.1);
if instance_exists(o_playerShip)
{
	o_playerShip.alarm[4] = 5;
}
}




