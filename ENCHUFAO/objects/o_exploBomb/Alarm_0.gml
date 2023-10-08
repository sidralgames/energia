/// @description Insert description here
// You can write your code in this editor
drawflash = false;
screenShake(min(8*scale),min(60*scale));

shockwave1 = instance_create(x,y,o_shockwave)
shockwave2 = instance_create(x,y,o_shockwaveTiles2)
if (isFromBullet)
{
	shockwave2.scale = 0.3;
	shockwave1.scale = 0.5;
}
else
{
	shockwave2.scale = 1;
	shockwave1.scale = scale;
}

shockwave1.depth = depth+1;
shockwave2.depth = depth+1;

