/// @description Insert description here
// You can write your code in this editor

hpBullet--;

if (global.bulletsGhostIsOn == false)
{
	if (hpBounce > 0)
	{
		CollisionTileBounce()
	}
	else
	{
		CollisionTileDestroy();
	}
}
if (hpBullet <= 0) || (hp < 0)
{
	instance_destroy();	
}

if (global.bulletsAeSmartIsOn)
{
	enemyNear = instance_nearest(x,y,o_enemyP);
	if (instance_exists(enemyNear)) && (point_distance(x,y, enemyNear.x, enemyNear.y) < 100)
	{
		var a = point_direction(x,y, enemyNear.x, enemyNear.y);
		direction += sign(dsin(a - direction)) * (precision * min(1, global.relativeSpeed+0.2));
	}
	
}

 if (global.bulletsDanceIsOn)
 {
	direction+=dire*5;
	if (alarm[2]<=0)
	{
		dire = dire*-1;
		alarm[2] = 10;
	}
 }



speed = bulletSpeed * global.relativeSpeed;
