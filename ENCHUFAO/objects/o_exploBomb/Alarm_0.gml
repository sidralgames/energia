/// @description Insert description here
// You can write your code in this editor
drawflash = false;

screenShake(min(8*scaleShake),min(60*scaleShake));


if (isFromBullet)
{
	shockwave1 = instance_create(x,y,o_shockwave);
	shockwave1.scale = 0.5;
	
	shockwave2 = instance_create(x,y,o_shockwaveTiles2)
	shockwave2.scale = 0.3;
	
}
else
{
	shockwave1 = instance_create(x,y,o_shockwave);
	shockwave1.scale = scaleShockwave;
	
	shockwave2 = instance_create(x,y,o_shockwaveTiles2)
	shockwave2.scale = 1;
}

shockwave1.depth = depth+1;
shockwave2.depth = depth+1;

