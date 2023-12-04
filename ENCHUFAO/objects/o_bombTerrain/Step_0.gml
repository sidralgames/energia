/// @description Insert description here
// You can write your code in this editor
bulletSpeed = lerp(bulletSpeed, 0, 0.04);

speed = bulletSpeed * global.relativeSpeed;

scale = lerp(scale,1,0.05)

_angle += (speed*6) * global.relativeSpeed;

if (tile_meeting(x,y,"Tiles"))
{
	BossWormCreateTerrain();
	instance_destroy();
} 

if (flashAlpha >0)
{
	flashAlpha-=0.09;	
}

	
x+=hspeed * global.relativeSpeed;
y+=vspeed * global.relativeSpeed;


if (alarm[0] <=0) && (abs(_hpush) <= 0.4 && abs(_vpush) <= 0.4) && exploding = false
{
	contExplo = 70;
	exploding = true;
	image_index = 1;
}

if (_hp <=0)
{
	exploding = true;
	contExplo=1;
}
	

if (exploding = true) 
{
	contExplo --;
	
	if (contExplo <=0)
	{
		BossWormCreateTerrain();
		instance_destroy();
	}
}