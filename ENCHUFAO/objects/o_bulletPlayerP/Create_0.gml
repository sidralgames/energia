/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

hpBullet = 200;

if (global.piercingShot)
{
	hp = 1;
}
else
{
	hp = 0;
}

if (global.bouncingBulletsIsOn)
{
	hpBounce = 1;
}
else
{
	hpBounce = 0;
}


collisionIds = ds_list_create();
tocado = false;
bnc = 0.7;