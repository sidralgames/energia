/// @description Insert description here
// You can write your code in this editor

hpBullet--;

if (global.bulletsGhostIsOn == false)
{
	if (hpBounce > 0) && (isFrom = "Player")
	{
		CollisionTileBounce()
	}
	else
	{
		CollisionTileDestroy();
	}
}
else if (global.bulletsGhostIsOn == true)
{
	if (canBeGhost = false)
	{
		if (hpBounce > 0) && (isFrom = "Player")
		{
			CollisionTileBounce()
		}
		else
		{
			CollisionTileDestroy();
		}
	}
	
	if (tile_meeting(x,y,"Tiles"))
	{
	    isInTile = true;
	}
	
	if (isInTile)
	{
		if !(tile_meeting(x,y,"Tiles"))
		{
			canBeGhost = false
		}
	}
	
}
if (hpBullet <= 0) || (hp < 0)
{
	instance_destroy();	
}

if (global.bulletsAreSmartIsOn) && (isFrom = "Player")
{
	enemyNear = instance_nearest(x,y,o_enemyP);
	if (instance_exists(enemyNear)) && (point_distance(x,y, enemyNear.x, enemyNear.y) < 100 + (global.chipSmartFactor * 10) )
	{
		var a = point_direction(x,y, enemyNear.x, enemyNear.y);
		direction += sign(dsin(a - direction)) * (precision + global.chipSmartFactor * min(1, global.relativeSpeed+0.2));
	}
	
}


blackHoleNear = instance_nearest(x,y,o_blackHole);
if (instance_exists(blackHoleNear)) && (point_distance(x,y, blackHoleNear.x, blackHoleNear.y) < 150)
{
	var a = point_direction(x,y, blackHoleNear.x, blackHoleNear.y);
	direction += sign(dsin(a - direction)) * (precisionHole * min(1, global.relativeSpeed+0.2));
}
	



 if (global.bulletsDanceIsOn) && (isFrom = "Player")
 {
	direction+=dire*5;
	if (alarm[2]<=0)
	{
		dire = dire*-1;
		alarm[2] = 10;
	}
 }



speed = bulletSpeed * global.relativeSpeed;
