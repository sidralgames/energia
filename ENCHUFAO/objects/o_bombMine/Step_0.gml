/// @description Insert description here
// You can write your code in this editor
bulletSpeed = lerp(bulletSpeed, 0, 0.04);

speed = bulletSpeed * global.relativeSpeed;

scale = lerp(scale,1,0.05)

_angle += (speed*6) * global.relativeSpeed;

if flashAlpha >0
{
	flashAlpha-=0.09;	
}

if (tile_meeting(x+hspeed,y,"Tiles"))
{
    hspeed = -hspeed*bnc;
} 
	
if (tile_meeting(x,y+vspeed,"Tiles"))
{
    vspeed = -vspeed*bnc;
}

	

if instance_exists(o_playerShip)
{
	playerInRange = (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= range)
	|| collision_circle(x,y,range, o_exploBomb, false, true)
	
	if (playerInRange) && (exploding = false)
	{
		contExplo = 45;
		exploding = true;
		image_index = 1;
	}
}

if (_hp <= 0) && (exploding = false)
{
	contExplo = 25;
	exploding = true;
	image_index = 1;
}

if (exploding = true)
{
	contExplo --;
	
	if (contExplo <=0)
	{
		instance_destroy();	
	}
}