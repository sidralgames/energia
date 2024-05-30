/// @description Insert description here
// You can write your code in this editor

hpBullet--;


if (bifurcate = true) && (alarm[1] <= 0)
{
	dyingBif = true;
	instance_destroy();
	bullet1 = instance_create_layer(x,y, "Bullets", o_bulletPlayer);
	bullet2 = instance_create_layer(x,y, "Bullets", o_bulletPlayer);
	if instance_exists(bullet1) && instance_exists(bullet2)
	{
		bullet1.isFrom = "Player";
		bullet2.isFrom = "Player";
		if (global.bouncingBulletsIsOn)
		{
			bullet1.hpBounce = 1;
			bullet2.hpBounce = 1;
		}
		else
		{
			bullet1.hpBounce = 0;
			bullet2.hpBounce = 0;		
		}
		bullet1.bifurcate = false;
		bullet2.bifurcate = false;
		bullet1.bulletSpeed = 9;
		bullet2.bulletSpeed = 9;
		bullet1.direction = direction+6;
		bullet2.direction = direction-6;
	}
}


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
