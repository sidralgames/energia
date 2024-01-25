/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
bulletSpeed = 0;
hpBullet = 200;
precision = 4;

precisionHole = 1;

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

if (global.bulletsBifurcateIsOn)
{
	bifurcate = true;
	alarm[1] = 13;
}
else
{
	bifurcate = false
}
alarm[2] = 5;
startDancing = false
collisionIds = ds_list_create();
tocado = false;
bnc = 0.7;
dire = choose(1,-1);