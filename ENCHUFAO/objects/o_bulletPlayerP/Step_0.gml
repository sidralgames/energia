/// @description Insert description here
// You can write your code in this editor

hpBullet--;

if (hpBounce > 0)
{
	CollisionTileBounce()
}
else
{
	CollisionTileDestroy();
}
if (hpBullet <= 0) || (hp < 0)
{
	instance_destroy();	
}



